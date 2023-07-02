//C++
//読み込むCSVは６列でモーキャプの剛体の座標をつかいます
//下処理として、モーキャプのYZを入れ替え・yaw,pitchの入れ替えが必要です
//座標変換を事前に行う場合も必ず[XYZrpy]の順にしてください
//変数 snake_case
//関数 PascalCase

//C
#include <stdio.h>
#include <string>
#include <time.h>
#include <unistd.h>
#include <math.h>
//C++
#include <fstream>
#include <iostream>
//ROS1_melodic,Moveit!
#include <ros/ros.h>
#include <moveit/move_group_interface/move_group_interface.h>
#include <tf/transform_broadcaster.h>

// #include <moveit_commander>
// #include <moveit_msgs.msg>

#define ROW 1900 // 行数
#define COLUMN 6 // 列数 XYZrpy

using namespace std;

//関数 CsvRead                                    
//引数 二次元配列(double)       
//戻値 なし          
//機能 引数である二次元配列にCSVを格納する
//    
void CsvRead(double array_data[ROW][COLUMN]) {
    
    std::ifstream stream("/home/tt/catkin_ws/src/arm_lecture/src/CSV/tate_calc.csv");
    std::string line;    
    const std::string delim = ","; //変えられたら困る
    int row_count= 0;
    int col_count;
    while ( getline(stream, line) ) {
        col_count = 0;
        // delimを区切り文字として切り分け、doubleに変換してarray_data[][]に格納する
        for ( std::string::size_type spos, epos = 0;
            (spos = line.find_first_not_of(delim, epos)) != std::string::npos;) {
          std::string token = line.substr(spos,(epos = line.find_first_of(delim, spos))-spos);
          array_data[row_count][col_count ++] = stof(token);
         }
      ++row_count;
     }
  //    for ( row_count = 0; row_count < ROW; ++row_count ) {
  //   for ( col_count = 0; col_count < 10; ++col_count ) {
  //     cout << array_data[row_count][col_count] << " ";
  //   }
  //   cout << endl;
  // }
}

//関数 CalcPosition  
//引数 二次元配列(double)   
//戻値 なし                
//機能 二次元配列に格納したXYZの位置を[cm]から[m]に変換し、新しく3列の二次元配列に格納
//
void CalcPositon(double array[ROW][COLUMN-3]){
    double csv_array[ROW][COLUMN];
    CsvRead(csv_array);//グローバル変数使いたくないのでCsvRead使います
    for(int position_array_count = 0; position_array_count < ROW; position_array_count++) {
      
            array[position_array_count][0] = csv_array[position_array_count][0]; 
            array[position_array_count][1] = csv_array[position_array_count][1];
            array[position_array_count][2] = csv_array[position_array_count][2];
            
    }
  //   for ( int row_count = 0; row_count < ROW; ++row_count ) {
  //     for ( int col_count = 0; col_count < 3; ++col_count ) {
  //       cout << array[row_count][col_count] << " ";
  //      }
  //   cout << endl;
  // }
}

//関数 CalcOrientationRpyToQ                                    
//引数   
//戻値                
//機能 [deg]から[rad]に変換し、
//  
geometry_msgs::Quaternion CalcOrientationRpyToQ(double array[ROW][COLUMN-2]){
    double csv_array[ROW][COLUMN];
    CsvRead(csv_array);//グローバル変数使いたくないのでCsvRead使います
    for(int orientation_array_count = 0; orientation_array_count < ROW; orientation_array_count++) {
      tf::Quaternion quat=tf::createQuaternionFromRPY(csv_array[orientation_array_count][3],
      csv_array[orientation_array_count][4],csv_array[orientation_array_count][5]);
      geometry_msgs::Quaternion geometry_quat;
      quaternionTFToMsg(quat, geometry_quat);
            array[orientation_array_count][0] = geometry_quat.x;
            array[orientation_array_count][1] = geometry_quat.y;
            array[orientation_array_count][2] = geometry_quat.z;
            array[orientation_array_count][3] = geometry_quat.w;
    }
    //   for ( int row_count = 0; row_count < ROW; ++row_count ) {
    //   for ( int col_count = 0; col_count < 4; ++col_count ) {
    //     cout << array[row_count][col_count] << " ";
    //    }
    // cout << endl;
  }



//main
int main(int argc, char **argv) {
  ros::init(argc, argv, "moveit_commander_mocap");
  ros::NodeHandle nh;

  // Set up the arm planning interface
  moveit::planning_interface::MoveGroupInterface arm("arm0");

  // Prepare
  ROS_INFO("Moving to prepare pose");
  ROS_INFO_NAMED("tutorial", "Reference frame: %s", arm.getPlanningFrame().c_str());
  ROS_INFO_NAMED("tutorial", "End effector link: %s", arm.getEndEffectorLink().c_str());
  arm.setPlanningTime(2.0);
  arm.setPlannerId("RRTConnect");
  arm.setGoalTolerance(0.01);

  double probe_position_data[ROW][COLUMN-3]; // XYZの3列
  double probe_orientation_data[ROW][COLUMN-2]; // XYZ軸の回転とW
  struct timespec startTime, endTime, sleepTime; // 実行時間計算用
  
  CalcPositon(probe_position_data);
  CalcOrientationRpyToQ(probe_orientation_data);
  geometry_msgs::PoseStamped probe_pose;
  probe_pose.header.frame_id = "base_link";
  clock_gettime(CLOCK_REALTIME, &startTime);

  for(int posing_num_count = 0; posing_num_count < ROW; posing_num_count++ ) {
     //位置
     probe_pose.pose.position.x = probe_position_data[posing_num_count][0] + 0.2 ; // X
     probe_pose.pose.position.y = probe_position_data[posing_num_count][1] ; // Y
     probe_pose.pose.position.z = probe_position_data[posing_num_count][2] + 0.7; // Z
     //姿勢(クォータニオン)
     probe_pose.pose.orientation.x = probe_orientation_data[posing_num_count][0]; //
     probe_pose.pose.orientation.y = probe_orientation_data[posing_num_count][1]; //
     probe_pose.pose.orientation.z = probe_orientation_data[posing_num_count][2]; //
     probe_pose.pose.orientation.w = probe_orientation_data[posing_num_count][3]; //
   
     
     moveit::planning_interface::MoveItErrorCode ret;
     ROS_INFO(" %d/%d ]",posing_num_count+1, ROW); // タスク数表示
     ROS_INFO("move to [%8.3f:%8.3f:%8.3f ],[%8.3f:%8.3f:%8.3f:%8.3f]",probe_pose.pose.position.x,
     probe_pose.pose.position.y,probe_pose.pose.position.z,probe_pose.pose.orientation.x
     ,probe_pose.pose.orientation.y,probe_pose.pose.orientation.z,probe_pose.pose.orientation.w); // 目標位置・姿勢表示
     arm.setPoseTarget( probe_pose); // 
     ret = arm.asyncMove(); // 指定位置・指定姿勢へ移動[asyncmove]は関数実行時ブロックしない
     
     if (!ret) {
       ROS_WARN("Fail: %i", ret.val); // エラー表示数字によって意味が異なる
     }
     //ROS_INFO('[%8.3f', arm.getcurrentPose);
    // ROS_INFO(arm.getCurrentRPY());
  ros::Duration(0.0333).sleep(); // モーションキャプチャのFPSに合わせる(移動動作は0[s]と仮定...)
}

  ROS_INFO("FINISH");
  //実行時間表示(モーキャプとの差が大事)
  clock_gettime(CLOCK_REALTIME, &endTime);
  if (endTime.tv_nsec < startTime.tv_nsec) {
    ROS_INFO("%10ld.%09ld[s]", endTime.tv_sec - startTime.tv_sec - 1
          ,endTime.tv_nsec + 1000000000 - startTime.tv_nsec);
  } else {
   ROS_INFO("%10ld.%09ld[s]", endTime.tv_sec - startTime.tv_sec
          ,endTime.tv_nsec - startTime.tv_nsec);
  }
 
  ros::shutdown();
  return 0;
}
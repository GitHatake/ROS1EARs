//C++
//読み込むCSVは６列でモーキャプの剛体の座標をつかいます
//下処理として、モーキャプのYZを入れ替えとyaw,pitchの入れ替えが必要です
//
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
#define ROW 8 // 行数
#define COLUMN 6 // 列数 XYZrpy
using namespace std;
//関数 CsvRead
//引数 二次元配列(double)
//戻値 なし
//機能 引数である二次元配列にCSVを格納する
//
void CsvRead(double array_data[ROW][COLUMN])
{
  std::ifstream stream("/home/aokilablinuxws/catkin_ws/src/arm_lecture/src/gyougain2.csv");//　読み込みファイル指定
  std::string line;
  const std::string delim = ",";
  int row_count = 0;
  int col_count;
  while (getline(stream, line))
  {
    col_count = 0;
    // delimを区切り文字として切り分け、doubleに変換してarray_data[][]に格納する
    for (std::string::size_type spos, epos = 0;
         (spos = line.find_first_not_of(delim, epos)) != std::string::npos;)
    {
      std::string token = line.substr(spos, (epos = line.find_first_of(delim, spos)) - spos);
      array_data[row_count][col_count++] = stof(token);
    }
    ++row_count;
  }
}
//関数 CalcPosition
//引数 二次元配列(double)
//戻値 なし
//機能 二次元配列に格納したXYZの位置を[cm]から[m]に変換し、新しく3列の二次元配列に格納
//
void CalcPositon(double array[ROW][COLUMN - 3])
{
  double csv_array[ROW][COLUMN];
  CsvRead(csv_array); //グローバル変数使いたくないのでCsvRead使います
  for (int position_array_count = 0; position_array_count < ROW; position_array_count++)
  {
    array[position_array_count][0] = csv_array[position_array_count][0] * 0.01;
    array[position_array_count][1] = csv_array[position_array_count][1] * 0.01;
    array[position_array_count][2] = csv_array[position_array_count][2] * 0.01;
  }
  //   for ( int row_count = 0; row_count < ROW; ++row_count ) {
  //     for ( int col_count = 0; col_count < 3; ++col_count ) {
  //       cout << array[row_count][col_count] << " ";
  //      }
  //   cout << endl;
  // }
}
//関数 CalcOrientationRpyToQ
//引数 二次元配列(double)
//戻値
//機能 [deg]から[rad]に変換
//
geometry_msgs::Quaternion CalcOrientationRpyToQ(double array[ROW][COLUMN - 2])
{
  double csv_array[ROW][COLUMN];
  CsvRead(csv_array); //グローバル変数使いたくないのでCsvRead使います
  for (int orientation_array_count = 0; orientation_array_count < ROW; orientation_array_count++)
  {
    tf::Quaternion quat = tf::createQuaternionFromRPY(csv_array[orientation_array_count][3] * M_PI / 180,
                                                      csv_array[orientation_array_count][4] * M_PI / 180 - M_PI, csv_array[orientation_array_count][5] * M_PI / 180);
    geometry_msgs::Quaternion geometry_quat;
    quaternionTFToMsg(quat, geometry_quat);
    array[orientation_array_count][0] = geometry_quat.x;
    array[orientation_array_count][1] = geometry_quat.y;
    array[orientation_array_count][2] = geometry_quat.z;
    array[orientation_array_count][3] = geometry_quat.w;
  }
}
//main
int main(int argc, char **argv)
{
  ros::init(argc, argv, "moveit_commander_mocap");
  ros::NodeHandle nh;
  // Set up the arm planning interface
  moveit::planning_interface::MoveGroupInterface arm("arm0");
  // Prepare
  ROS_INFO("Moving to prepare pose");
  ROS_INFO_NAMED("tutorial", "Reference frame: %s", arm.getPlanningFrame().c_str());
  ROS_INFO_NAMED("tutorial", "End effector link: %s", arm.getEndEffectorLink().c_str());
  arm.setPlanningTime(5.0); //プランニング時間
  arm.setPlannerId("RRTConnect");    //プランニングアルゴリズム
  arm.setGoalPositionTolerance(0.01);    //目標精度(位置)
  arm.setGoalOrientationTolerance(0.01); //目標精度(姿勢)
  //double current_rpy[3];
  std::vector<double> current_rpy_tmp;         //エンドエフェクタの一時保管場所
  std::vector<double> current_joint_value_tmp; //各関節の値の一時保管場所
  //std::vector<double> current_rpy;
  //std::vector<vector<double>> current_rpy; //データを格納する可変長配列
  double current_rpy[ROW][3];         //エンドエフェクタの姿勢格納用
  double current_joint_value[ROW][7]; //各関節の値格納、二次元配列
  int num;
  double probe_position_data[ROW][COLUMN - 3];    // XYZの3列
  double probe_orientation_data[ROW][COLUMN - 2]; // XYZ軸の回転とW
  struct timespec startTime, endTime, sleepTime; // 実行時間計算用
  ros::AsyncSpinner spinner(1);
  spinner.start();
  CalcPositon(probe_position_data);
  CalcOrientationRpyToQ(probe_orientation_data);
  geometry_msgs::PoseStamped probe_pose;
  probe_pose.header.frame_id = "base_link";
  clock_gettime(CLOCK_REALTIME, &startTime);
  int starting_count = 0;
  for (int posing_num_count = 0; posing_num_count < ROW; posing_num_count++)
  {
    current_rpy_tmp.clear();
    current_joint_value_tmp.clear();
    if (starting_count == 0)
    {
      //位置
      probe_pose.pose.position.x = probe_position_data[posing_num_count][0] + 0.2; // X
      probe_pose.pose.position.y = probe_position_data[posing_num_count][1];       // Y
      probe_pose.pose.position.z = probe_position_data[posing_num_count][2] + 0.7; // Z
      //probe_pose.pose.position.z = probe_position_data[posing_num_count][2] + 0.45; // Z
      //probe_pose.pose.position.z = probe_position_data[posing_num_count][2] + 0.6; // Z
      //姿勢(クォータニオン)
      probe_pose.pose.orientation.x = probe_orientation_data[posing_num_count][0]; //
      probe_pose.pose.orientation.y = probe_orientation_data[posing_num_count][1]; //
      probe_pose.pose.orientation.z = probe_orientation_data[posing_num_count][2]; //
      probe_pose.pose.orientation.w = probe_orientation_data[posing_num_count][3]; //
      moveit::planning_interface::MoveItErrorCode ret;
      ROS_INFO(" %d/%d ]", posing_num_count + 1, ROW); // タスク数表示
      ROS_INFO("move to [%3.3f:%3.3f:%3.3f ],[%3.3f:%3.3f:%3.3f:%3.3f]", probe_pose.pose.position.x,
               probe_pose.pose.position.y, probe_pose.pose.position.z, probe_pose.pose.orientation.x, probe_pose.pose.orientation.y, probe_pose.pose.orientation.z, probe_pose.pose.orientation.w); // 目標位置・姿勢表示
      arm.setPoseTarget(probe_pose);                                                                                                                                                                //
      ret = arm.move();
      //ret = arm.asyncMove();                                                                                                                                                                             // 指定位置・指定姿勢へ移動[asyncmove]は関数実行時ブロックしない
      ros::Duration(0.1333).sleep(); // モーションキャプチャのFPSに合わせる(移動動作は0[s]と仮定...)下にもう一箇所あるので気をつけて
      if (!ret)
      {
        ROS_WARN("Fail: %i", ret.val); // エラー表示数字によって意味が異なる
      }
      //ROS_INFO('[%8.3f', arm.getcurrentPose);
      // ROS_INFO(arm.getCurrentRPY());
      current_rpy_tmp = arm.getCurrentRPY();
      current_joint_value_tmp = arm.getCurrentJointValues();
      // printf("%3.3f\n", current_rpy_tmp[0]);
      // printf("%3.3f\n", current_rpy_tmp[1]);
      // printf("%3.3f\n", current_rpy_tmp[2]);
      current_rpy[0][0] = current_rpy_tmp[0];
      current_rpy[0][1] = current_rpy_tmp[1];
      current_rpy[0][2] = current_rpy_tmp[2];
      for (int i = 0; i < 7; i++)
      {
        current_joint_value[0][i] = current_joint_value_tmp[i];
      }
      // for (int i = 0; i < 3; i++)
      // {
      //   current_rpy[0][0] = current_rpy_tmp[0];
      // }
      
      starting_count++;
    }
    if (starting_count != 0)
    {
      //位置
      probe_pose.pose.position.x = probe_position_data[posing_num_count][0] + 0.2; // X
      probe_pose.pose.position.y = probe_position_data[posing_num_count][1];       // Y
      //probe_pose.pose.position.z = probe_position_data[posing_num_count][2] + 0.7; // Z
      probe_pose.pose.position.z = probe_position_data[posing_num_count][2] + 0.45; // Z
      //姿勢(クォータニオン)
      probe_pose.pose.orientation.x = probe_orientation_data[posing_num_count][0]; //
      probe_pose.pose.orientation.y = probe_orientation_data[posing_num_count][1]; //
      probe_pose.pose.orientation.z = probe_orientation_data[posing_num_count][2]; //
      probe_pose.pose.orientation.w = probe_orientation_data[posing_num_count][3]; //
      moveit::planning_interface::MoveItErrorCode ret;
      ROS_INFO(" %d/%d ]", posing_num_count + 1, ROW); // タスク数表示
      ROS_INFO("move to [%3.3f:%3.3f:%3.3f ],[%3.3f:%3.3f:%3.3f:%3.3f]", probe_pose.pose.position.x,
               probe_pose.pose.position.y, probe_pose.pose.position.z, probe_pose.pose.orientation.x, probe_pose.pose.orientation.y, probe_pose.pose.orientation.z, probe_pose.pose.orientation.w); // 目標位置・姿勢表示
      arm.setPoseTarget(probe_pose);                                                                                                                                                                //
      //ret = arm.asyncMove();
      ret = arm.move(); 
      ros::Duration(0.1333).sleep(); // モーションキャプチャのFPSに合わせる?(移動動作は0[s]と仮定...)                                                                                                                                                                       // 指定位置・指定姿勢へ移動[asyncmove]は関数実行時ブロックしない
      if (!ret)
      {
        ROS_WARN("Fail: %i", ret.val); // エラー表示数字によって意味が異なる
      }
      //ROS_INFO('[%8.3f', arm.getcurrentPose);
      // ROS_INFO(arm.getCurrentRPY());
      current_rpy_tmp = arm.getCurrentRPY();
      current_joint_value_tmp = arm.getCurrentJointValues();
      // printf("%3.3f\n", current_rpy_tmp[0]);
      // printf("%3.3f\n", current_rpy_tmp[1]);
      // printf("%3.3f\n", current_rpy_tmp[2]);
      for (int i = 0; i < 3; i++)
      {
        current_rpy[starting_count][i] = current_rpy_tmp[i];
      }
      for (int i = 0; i < 7; i++)
      {
        current_joint_value[starting_count][i] = current_joint_value_tmp[i];
      }
      
      starting_count++;
    }
  }
  ROS_INFO("FINISH");
  //実行時間表示(モーキャプとの差が大事)e
  clock_gettime(CLOCK_REALTIME, &endTime);
  if (endTime.tv_nsec < startTime.tv_nsec)
  {
    ROS_INFO("%10ld.%09ld[s]", endTime.tv_sec - startTime.tv_sec - 1, endTime.tv_nsec + 1000000000 - startTime.tv_nsec);
  }
  else
  {
    ROS_INFO("%10ld.%09ld[s]", endTime.tv_sec - startTime.tv_sec, endTime.tv_nsec - startTime.tv_nsec);
  }
  //num = current_rpy.size();
  //printf("%d\n", num);
  ofstream ofs("/home/aokilablinuxws/catkin_ws/src/arm_lecture/src/hitoshi.csv");                  // ファイルパスを指定する
  ofstream ofs_joint_value("/home/aokilablinuxws/catkin_ws/src/arm_lecture/src/hitoshi.csv"); // ファイルパスを指定する
  // for (int y = 0; y < current_rpy.size() / 3; y++)
  // {
  //   for (int x = 0; x < 3; x++)
  //   {
  //     map[x][y] = current_rpy[i]
  //   }
  // }
  for (int y = 0; y < ROW; y++)
  {
    ofs << current_rpy[y][0] * 180 / M_PI << ", " << current_rpy[y][1] * 180 / M_PI << ", " << current_rpy[y][2] * 180 / M_PI << ", " << endl;
  }
  for (int y = 0; y < ROW; y++)
  {
    ofs_joint_value << current_joint_value[y][0] * 180 / M_PI << ", " << current_joint_value[y][1] * 180 / M_PI << ", " << current_joint_value[y][2] * 180 / M_PI << ", " << current_joint_value[y][3] * 180 / M_PI << ", " << current_joint_value[y][4] * 180 / M_PI << ", " << current_joint_value[y][5] * 180 / M_PI << ", " << current_joint_value[y][6] * 180 / M_PI << ", " << endl;
  }
  ros::shutdown();
  return 0;
}

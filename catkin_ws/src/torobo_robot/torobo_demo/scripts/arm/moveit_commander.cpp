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




int main(int argc, char **argv) {
  ros::init(argc, argv, "moveit_commander");
  ros::NodeHandle nh;
  std::vector<double> current_rpy_tmp;
  std::vector<double> current_rpy;

  ros::AsyncSpinner spinner(2);
  spinner.start();

  // Set up the arm planning interface
  moveit::planning_interface::MoveGroupInterface arm("arm0");

  // Prepare
  ROS_INFO("Moving to prepare pose");
  ROS_INFO_NAMED("tutorial", "Reference frame: %s", arm.getPlanningFrame().c_str());
  ROS_INFO_NAMED("tutorial", "End effector link: %s", arm.getEndEffectorLink().c_str());
  arm.setPlanningTime(0.050);
  arm.setPlannerId("RRTConnect");
  arm.setGoalTolerance(0.01);

  // pose1
  geometry_msgs::PoseStamped pose1;
  pose1.header.frame_id = "base_link";
  pose1.pose.position.x = 0.488;
  pose1.pose.position.y = 0.00;
  pose1.pose.position.z = 1.2;
  pose1.pose.orientation.x = 0.7678; //
  pose1.pose.orientation.y =0.4247;  //
  pose1.pose.orientation.z = 0.2087; //
  pose1.pose.orientation.w = 0.4319; //

  // pose2
  geometry_msgs::PoseStamped pose2;
  pose2.header.frame_id = "base_link";
  pose2.pose.position.x = 0.488;
  pose2.pose.position.y = 0.00;
  pose2.pose.position.z = 1.2;
  pose2.pose.orientation.x = 0.7678; //
  pose2.pose.orientation.y =0.4247;  //
  pose2.pose.orientation.z = 0.2087; //
  pose2.pose.orientation.w = 0.4319; //
  // pose3
  geometry_msgs::PoseStamped pose3;
  pose3.header.frame_id = "base_link";
  pose3.pose.position.x = 0.488;
  pose3.pose.position.y = 0.00;
  pose3.pose.position.z = 1.2;
  pose3.pose.orientation.x = 0.7678; //
  pose3.pose.orientation.y =0.4247;  //
  pose3.pose.orientation.z = 0.2087; //
  pose3.pose.orientation.w = 0.4319; //
  // pose4
  geometry_msgs::PoseStamped pose4;
  pose4.header.frame_id = "base_link";
  pose4.pose.position.x = 0.488;
  pose4.pose.position.y = -0.0;
  pose4.pose.position.z = 1.2;
  pose4.pose.orientation.x = 0; //
  pose4.pose.orientation.y =1;  //
  pose4.pose.orientation.z = 0; //
  pose4.pose.orientation.w = 0; //

  moveit::planning_interface::MoveItErrorCode ret;

  ROS_INFO("move to WP1");
  arm.setPoseTarget(pose1);
  ret = arm.move();
  if (!ret) {
    ROS_WARN("Fail: %i", ret.val);
  }
  printf("%8.3f",arm.getCurrentRPY());
  ros::Duration(0.5).sleep();
  

  ROS_INFO("move to WP2");
  arm.setPoseTarget(pose2);
  ret = arm.move();
  if (!ret) {
    ROS_WARN("Fail: %i", ret.val);
  }
  current_rpy_tmp = arm.getCurrentRPY();
  for (int i = 0; i < 3; i++)
  {
    current_rpy.push_back(current_rpy_tmp[i]);
  }
  for (int i = 0; i < current_rpy.size(); i++)
  {
    printf("%8.3f,", current_rpy[i] * 180/M_PI);
    printf("\n");
  }

  
  ros::Duration(0.5).sleep();


  ROS_INFO("move to WP3");
  arm.setPoseTarget(pose3);
  ret = arm.move();
  if (!ret) {
    ROS_WARN("Fail: %i", ret.val);
  }
  arm.getCurrentRPY();
  ros::Duration(0.5).sleep();

  ROS_INFO("move to WP4");
  arm.setPoseTarget(pose4);
  ret = arm.move();
  if (!ret) {
    ROS_WARN("Fail: %i", ret.val);
  }
  arm.getCurrentRPY();
  ros::Duration(0.5).sleep();

  ros::shutdown();
  return 0;
}
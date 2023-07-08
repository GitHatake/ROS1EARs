#!/bin/bash

sudo apt-get update &&\
sudo apt-get upgrade -yq

cd ~/catkin_ws

source /opt/ros/melodic/setup.bash

source devel/setup.bash

catkin init
catkin clean -b -y
catkin build

cd ~/catkin_ws/src/ddynamic_reconfigure
cmake .
catkin init
catkin build

cd ~/catkin_ws/src/realsense-ros/realsense2_camera
cmake .
catkin init
catkin build

cd ~/catkin_ws/src/realsense-ros/realsense2_description
cmake .
catkin init
catkin build


cd ~/catkin_ws
sudo apt-get update &&\
sudo apt-get upgrade -yq


#source /opt/ros/melodic/setup.bash

#source devel/setup.bash

#roslaunch torobo_bringup torobo_bringup.launch sim:=true
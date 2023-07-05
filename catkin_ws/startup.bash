#!/bin/bash

#起動準備
catkin init
catkin clean -b
catkin build
catkin source

#roulaunchとか
cd ~/catkin_ws

source /opt/ros/melodic/setup.bash

source devel/setup.bash

roslaunch torobo_bringup torobo_bringup.launch sim:=true
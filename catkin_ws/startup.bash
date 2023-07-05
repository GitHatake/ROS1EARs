#!/bin/bash

sudo apt-get update &&\
sudo apt-get upgrade -yq

cd ~/catkin_ws

source /opt/ros/melodic/setup.bash

source devel/setup.bash

catkin init
catkin clean -b -y
catkin build
catkin source

source /opt/ros/melodic/setup.bash

source devel/setup.bash

roslaunch torobo_bringup torobo_bringup.launch sim:=true
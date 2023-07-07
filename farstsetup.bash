#!/bin/bash

apt-get update -y 
apt-get upgrade -y

cd catkin_ws

catkin init
catkin build
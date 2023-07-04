
FROM ubuntu:18.04 as system



#RUN git clone https://github.com/GitHatake/ROS1EARs/catkin_ws.git &&\
#    git clone https://github.com/GitHatake/ROS1EARs/bash_memo.txt.git


COPY ./catkin_ws /home/ubuntu

LABEL Name="EARsROSmelodic"
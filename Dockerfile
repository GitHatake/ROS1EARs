FROM tiryoh/ros-desktop-vnc:melodic


RUN apt-get update && \
    apt-get upgrade -yq && \
    apt-get install -y --no-install-recommends dirmngr gnupg2 && \
    rm -rf /var/lib/apt/lists/*

#RUN git clone https://github.com/GitHatake/ROS1EARs/catkin_ws.git &&\
#    git clone https://github.com/GitHatake/ROS1EARs/bash_memo.txt.git


COPY ./catkin_ws /home/ubuntu

LABEL Name="EARsROSmelodic"
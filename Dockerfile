FROM tiryoh/ros-desktop-vnc:melodic


RUN apt-get update && \
    apt-get upgrade -yq && \
    apt-get install -y --no-install-recommends dirmngr gnupg2 && \
    rm -rf /var/lib/apt/lists/*

COPY catkin_ws ~/

#RUN git clone https://github.com/GitHatake/ROS1EARs/catkin_ws.git &&\
#    git clone https://github.com/GitHatake/ROS1EARs/bash_memo.txt.git

LABEL Name="EARsROSmelodic"
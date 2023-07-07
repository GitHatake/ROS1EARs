FROM tiryoh/ros-desktop-vnc:melodic


RUN apt-get update && \
    apt-get upgrade -yq && \
    apt-get install -y --no-install-recommends dirmngr gnupg2 && \
    rm -rf /var/lib/apt/lists/*

COPY /home/hatakeyama/docker/ROS1EARs/torobo_robot.zip

RUN mkdir -p /home/ubuntu/src -yq &&\
    cp torobo_robot.zip /home/ubuntu/src -yq &&\
    cd /home/ubuntu/catkin_ws/src && \
    unzip torobo_robot.zip

WORKDIR /home/ubuntu/catkin_ws

RUN catkin init -yq && \
    catkin build -yq && \
    catkin source -yq


LABEL Name="earsrosmelodic"
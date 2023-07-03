FROM tiryoh/ros-desktop-vnc:melodic


RUN apt-get update && \
    apt-get upgrade -yq && \
    apt-get install -y --no-install-recommends dirmngr gnupg2 && \
    rm -rf /var/lib/apt/lists/*

COPY /home/hatakeyama/docker/ROS1EARs/catkin_ws /home/ubuntu

LABEL Name="earsrosmelodic"
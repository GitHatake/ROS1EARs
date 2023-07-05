FROM tiryoh/ros-desktop-vnc:melodic


RUN apt-get update && \
    apt-get upgrade -yq && \
    apt-get install -y --no-install-recommends dirmngr gnupg2 && \
    rm -rf /var/lib/apt/lists/*

RUN cd /home/ubuntu $$ \
    mkdir catkin_ws

COPY ./catkin_ws /home/ubuntu/catkin_ws

RUN sudo apt-get update && \
    sudo apt-get install ros-melodic-moveit-ros-planning-interface \
    ros-melodic-moveit-msgs \
    ros-melodic-ddynamic-reconfigure


LABEL Name="earsrosmelodic"
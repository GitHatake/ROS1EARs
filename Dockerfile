FROM tiryoh/ros-desktop-vnc:melodic


RUN apt-get update && \
    apt-get upgrade -yq && \
    apt-get install -y --no-install-recommends dirmngr gnupg2 && \
    rm -rf /var/lib/apt/lists/*

RUN cd /home/ubuntu && \
    mkdir catkin_ws

COPY ./catkin_ws /home/ubuntu/catkin_ws

RUN cd ~/catkin_ws/src

#RUN git clone https://github.com/pal-robotics/ddynamic_reconfigure.git
#RUN git clone https://github.com/ros-planning/moveit_msgs.git
#RUN git clone https://github.com/ros-planning/moveit_ros.git

RUN sudo apt-get update
RUN sudo apt-get install ros-melodic-moveit-ros-planning-interface -yq
RUN sudo apt-get install ros-melodic-moveit-msgs -yq
RUN sudo apt-get install ros-melodic-ddynamic-reconfigure -yq
#RUN sudo apt-get install debian -yq
#RUN sudo apt-get install realsense-ros-melodic -yq
#RUN sudo apt-get install ros-melodic-realsense2-camera -yq
#RUN sudo apt-get install ros-melodic-realsense2-description -yq

RUN git clone https://github.com/IntelRealSense/realsense-ros.git &&\
    cd realsense-ros/ &&\
    git checkout `git tag | sort -V | grep -P "^2.\d+\.\d+" | tail -1` &&\
    cd ..

RUN sudo apt-get update &&\
    sudo apt-get upgrade -yq

#RUN sudo apt-get install ros-melodic-catkin python-catkin-tools
#RUN sudo apt-get install ros-melodic-moveit



LABEL Name="earsrosmelodic"
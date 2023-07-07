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
RUN sudo apt-get install nano -yq
#RUN sudo apt-get install debian -yq
#RUN sudo apt-get install realsense-ros-melodic -yq
RUN sudo apt-get install ros-melodic-realsense2-camera -yq
#RUN sudo apt-get install ros-melodic-realsense2-description -yq

#RUN cd ~/catkin_ws/src
#RUN git clone https://github.com/IntelRealSense/realsense-ros.git &&\
#    cd realsense-ros/ &&\
#    git checkout ros1-legacy

#WORKDIR /home/ubuntu/catkin_ws

#RUN catkin init && \
#    catkin clean -b -y && \
#    catkin build realsense-ros

#RUN sudo apt-get update &&\
#    sudo apt-get upgrade -yq

#RUN cd ~/catkin_ws && \
#    /bin/bash -c "source /opt/ros/melodic/setup.bash && source devel/setup.bash"

#WORKDIR /home/ubuntu/catkin_ws

#RUN catkin init && \
#    catkin clean -b -y && \
#    catkin build realsense-ros

#RUN catkin init && \
#    catkin clean -b -y && \
#    catkin build && \
#    catkin source

RUN sudo apt-get update &&\
    sudo apt-get upgrade -yq

LABEL Name="earsrosmelodic"
FROM tiryoh/ros-desktop-vnc:melodic


RUN apt-get update && \
    apt-get upgrade -yq && \
    apt-get install -y --no-install-recommends dirmngr gnupg2 && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    cd /home/ubuntu && \
    mkdir catkin_ws

COPY ./catkin_ws /home/ubuntu/catkin_ws

WORKDIR /home/ubuntu/catkin_ws

RUN sudo apt-get update && \
    sudo apt-get install ros-melodic-moveit-ros-planning-interface -yq && \
    sudo apt-get install ros-melodic-moveit-msgs -yq && \
    sudo apt-get install ros-melodic-ddynamic-reconfigure -yq && \
    sudo apt-get install nano -yq && \
    sudo apt-get update && \
#    sudo apt-get install realsense-ros-melodic -yq && \
    sudo apt-get install ros-melodic-realsense2-camera -yq

RUN rosdep update && \
    apt-get install -y python-rosinstall && \
    sudo apt-get install -y python-catkin-tools && \
    apt-get update && \
    apt-get install -y ros-melodic-moveit && \
    apt-get install -y ros-melodic-moveit-visual-tools && \
    apt-get install -y ros-melodic-gazebo-ros-control && \
    apt-get install -y ros-melodic-ros-controllers

RUN apt-get update && \
    apt-get upgrade -yq 

RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc

RUN bash -c "source ~/.bashrc && echo 'source `catkin locate --shell-verbs`' >> ~/.bashrc && source ~/.bashrc"

WORKDIR /home/ubuntu/catkin_ws/src

RUN git clone https://github.com/IntelRealSense/realsense-ros.git
RUN cd realsense-ros && \
    git checkout ros1-legacy

RUN cd /home/ubuntu/catkin_ws/src && \
    git clone https://github.com/pal-robotics/ddynamic_reconfigure.git && \


#COPY farstsetup.bash /home/ubuntu
#COPY startup_bash.txt /home/ubuntu

#WORKDIR /home/ubuntu
#RUN chmod +x farstsetup.bash

RUN sudo apt-get update &&\
    sudo apt-get upgrade -yq

LABEL Name="earsrosmelodic"
FROM tiryoh/ros-desktop-vnc:melodic


RUN apt-get update && \
    apt-get upgrade -yq && \
    apt-get install -y --no-install-recommends dirmngr gnupg2 && \
    rm -rf /var/lib/apt/lists/*

COPY torobo_robot.zip /home/ubuntu


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

RUN mkdir -p /home/ubuntu/catkin_ws

WORKDIR /home/ubuntu/catkin_ws

RUN mkdir -p /home/ubuntu/catkin_ws/src

RUN cp /home/ubuntu/torobo_robot.zip /home/ubuntu/catkin_ws/src

WORKDIR /home/ubuntu/catkin_ws/src
    
RUN unzip torobo_robot.zip

COPY farstsetup.bash /home/ubuntu
COPY startup_bash.txt /home/ubuntu

WORKDIR /home/ubuntu
RUN chmod +x farstsetup.bash

LABEL Name="torobo_ros_melodic"
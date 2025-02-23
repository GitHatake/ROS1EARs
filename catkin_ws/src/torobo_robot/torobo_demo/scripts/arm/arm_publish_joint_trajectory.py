#! /usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import actionlib
import numpy as np
from trajectory_msgs.msg import JointTrajectoryPoint, JointTrajectory


def main():

    TOPIC_NAME = '/torobo/arm_controller/command'
    JOINT_NAMES = ['arm/joint_' + str(i) for i in range(1, 8)]
 # from joint_1 to joint_8

    # Initializes a rospy node.
    rospy.init_node('toroboarm_publish_joint_trajectory_node')

    # Create a publisher.
    publisher = rospy.Publisher(TOPIC_NAME, JointTrajectory, queue_size=1)

    # Wait until the publisher gets ready.
    while publisher.get_num_connections() == 0:
        rospy.sleep(1)

   # Publish a message.
   # publish_joint_trajectory(
      #  publisher = publisher,
      #  joint_names = JOINT_NAMES,
     #   positions = np.radians([0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]),
     #   time_from_start = 5.0
   # )#


    # Publish a message.
    publish_joint_trajectory(
        publisher = publisher,
        joint_names = JOINT_NAMES,
        positions = np.radians([54, 123, 53, -75, 26, 149, -122]),
        time_from_start = 10.0
    )

    # Wait 5 seconds
    rospy.sleep(5)

    # Publish a message.
    #publish_joint_trajectory(
        #publisher = publisher,
        #joint_names = JOINT_NAMES,
        #positions = np.radians([0.0, 0.0, 0.0, 0.0, 30.0, 0.0, 0.0]),
        #time_from_start = 5.0
    #)

    # Wait 5 seconds
    rospy.sleep(5)

    # Publish a message.
    #publish_joint_trajectory(
        #publisher = publisher,
        #joint_names = JOINT_NAMES,
        #positions = np.radians([0.0, 0.0, 0.0, 40.0, -30.0, -30.0, 0.0]),
       # time_from_start = 5.0
   # )

    # Wait 5 seconds
    rospy.sleep(5)

    # Publish a message.
    #publish_joint_trajectory(
        #publisher = publisher,
        #joint_names = JOINT_NAMES,
        #positions = np.radians([0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]),
        #time_from_start = 5.0
   #)

    # Wait 5 seconds
    rospy.sleep(5)

    rospy.loginfo("finished.")


def publish_joint_trajectory(publisher, joint_names, positions, time_from_start):
    """
    Function for publishing message to move the arm

    Parameters
    ----------
    publisher : rospy.Publisher
        publisher
    joint_names : list
        list of joint names
    positions : list
        list of joint's goal positions(radian)
    time_from_start : float
        transition time from start
    
    Returns
    -------
    None

    Throws
    ------
    None
    """

    # Creates a message.
    trajectory = JointTrajectory()
    trajectory.header.stamp = rospy.Time.now()
    trajectory.joint_names = joint_names
    point = JointTrajectoryPoint()
    point.positions = positions
    point.velocities = [0.0 for i in range(len(joint_names))]
    point.accelerations = [0.0 for i in range(len(joint_names))]
    point.effort = [0.0 for i in range(len(joint_names))]
    point.time_from_start = rospy.Duration(time_from_start)
    trajectory.points.append(point)

    # Publish the message.
    publisher.publish(trajectory)


if __name__ == '__main__':
    main()


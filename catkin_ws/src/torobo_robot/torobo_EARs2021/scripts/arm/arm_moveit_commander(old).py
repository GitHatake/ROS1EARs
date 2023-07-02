#! /usr/bin/env python
# -*- coding: utf-8 -*-


import rospy
import numpy as np
import copy
import tf
import csv
from geometry_msgs.msg import Pose
import moveit_commander

#import csv data
with open("/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_EARs2021/scripts/arm/test/test_1027.csv") as csv_f:
    reader = csv.reader(csv_f)
    csv_str = [row for row in reader]

csv_line = len(csv_str)
"""
del csv_str[0]
for i in range(csv_line-1):
    del csv_str[i][0]
"""
csv_float = [[float(v) for v in row] for row in csv_str]
csv_xyz = list(range(csv_line))
csv_rpy = list(range(csv_line))

for j in range(csv_line):
    csv_xyz[j] = csv_float[j][:3]
    csv_rpy[j] = np.radians(csv_float[j][3:])

def main():
    rospy.init_node("toroboarm_moveit_commander_node", anonymous=True)

    # Get move_group_commander.
    arm = get_move_group_commander("arm")

    # (1) Moving to zero position by "go" method.
    rospy.loginfo("Moving to zero position.")
    zero_position = {name:0.0 for name in arm.get_active_joints()}
    arm.set_start_state_to_current_state()           # set start
    arm.set_joint_value_target(zero_position)        # set target
    arm.go()                                         # plan and execute
    rospy.loginfo(" --> " + str(arm.get_current_pose().pose))

    # (2) create waypoints
    zero_pos = arm.get_current_pose().pose.position
    zero_rpy = arm.get_current_rpy()
    wp1 = create_pose(zero_pos, [0.0, 0.0, 0.0], 0.45, 0.0, -0.7, 0.0, np.radians(150.0), 0.0)
    wp2 = create_pose(zero_pos, [0.0, 0.0, 0.0], 0.35, 0.2, -0.5, 0.0, np.radians(130.0), 0.0)
    wp3 = create_pose(zero_pos, [0.0, 0.0, 0.0], 0.25, 0.0, -0.3, 0.0, np.radians(110.0), 0.0)

    """
    # (3) Moving to wp1 by "plan and execute" method.
    rospy.loginfo("Moving to wp1 by 'plan and execute' method.")
    arm.set_start_state_to_current_state()           # set start
    arm.set_pose_target(wp1)                         # set target
    plan = arm.plan()                                # plan
    arm.execute(plan)                                # execute
    rospy.loginfo(" --> " + str(arm.get_current_pose().pose))
    """

    # (4) Moving to wp2,wp3 "compute_cartesian_path" method.
    rospy.loginfo("Moving to wp2,wp3 by 'cartesian path' method.")
    waypoints = [wp2, wp3]
    (plan, fraction) = arm.compute_cartesian_path(waypoints, 0.01, 1000.0)
    arm.execute(plan, wait=True)
    rospy.loginfo(" --> " + str(arm.get_current_pose().pose))




    """
    rospy.init_node("toroboarm_moveit_commander_node", anonymous=True)

    # Get move_group_commander.
    arm = get_move_group_commander("arm")

    rospy.loginfo("Moving to zero position.")
    zero_position = {name:0.0 for name in arm.get_active_joints()}
    arm.set_start_state_to_current_state()
    # set start
    arm.set_joint_value_target(zero_position)
    # set target
    arm.go()
    # plan and execute
    rospy.loginfo(" --> " + str(arm.get_current_pose().pose))

    zero_pos = arm.get_current_pose().pose.position
    zero_rpy = arm.get_current_rpy()

    #w = list(range(csv_line))
    #for i in range(csv_line):
	#    w[i] = create_pose(zero_pos, [0.0, 0.0, 0.0], csv_xyz[i][0],csv_xyz[i][1],csv_xyz[i][2], csv_rpy[i][0], csv_rpy[i][1], csv_rpy[i][2])

    wp2 = create_pose(zero_pos, [0.0, 0.0, 0.0], 0.35, 0.2, -0.5, 0.0, np.radians(130.0), 0.0)
    wp3 = create_pose(zero_pos, [0.0, 0.0, 0.0], 0.25, 0.0, -0.3, 0.0, np.radians(110.0), 0.0)


    arm.set_start_state_to_current_state()  # set start
    rospy.loginfo("Moving to kinematics by 'cartesian path' method.")
    waypoints = [wp2, wp3]
    rospy.loginfo("finish")
    (plan, fraction) = arm.compute_cartesian_path(waypoints, 0.01, 1000.0)
    arm.execute(plan, wait=True)
    rospy.loginfo(" --> " + str(arm.get_current_pose().pose))
    """


def get_move_group_commander(name):
    """
    Function for getting moveit's move_group commander

    Parameters
    ----------
    name : string
        move_group's name

    Returns
    -------
    commander : MoveGroupCommander
        moveit's move_group commander
    """

    # Initializing move_group_commander.
    robot = moveit_commander.RobotCommander(robot_description=rospy.get_namespace() + "robot_description" , ns=rospy.get_namespace())
    commander = moveit_commander.MoveGroupCommander(name, robot_description=rospy.get_namespace() +"robot_description", ns=rospy.get_namespace())
    # Settings.
    commander.set_planner_id('RRTConnectkConfigDefault')
    commander.set_max_velocity_scaling_factor(1.0)
    commander.set_max_acceleration_scaling_factor(1.0)
    commander.set_goal_orientation_tolerance(0.001)
    commander.set_goal_position_tolerance(0.001)
    commander.set_planning_time(5.0)
    commander.set_num_planning_attempts(20)
    return commander

def create_pose(pos, rpy, dx, dy, dz, droll, dpitch, dyaw):
    q = tf.transformations.quaternion_from_euler(rpy[0]+droll, rpy[1]+dpitch, rpy[2]+dyaw)
    pose = Pose()
    pose.position.x = pos.x + dx
    pose.position.y = pos.y + dy
    pose.position.z = pos.z + dz
    pose.orientation.x = q[0]
    pose.orientation.y = q[1]
    pose.orientation.z = q[2]
    pose.orientation.w = q[3]
    return pose

if __name__ == '__main__':
    main()

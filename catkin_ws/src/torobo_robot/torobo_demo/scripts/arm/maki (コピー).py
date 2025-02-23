#! /usr/bin/env python
# -*- coding: utf-8 -*-


import rospy
import numpy as np
import copy
import tf
from geometry_msgs.msg import Pose
import moveit_commander


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
    wp1 = create_pose(zero_pos, [0.0, 0.0, 0.0], 0.5608, 0.1321, -0.771, np.radians(164.1), np.radians(8.3), np.radians(-160.3))
    #wp1 = create_pose(zero_pos, [0.0, 0.0, 0.0], 0.5, 0.0, -0.7867, np.radians(0.0), np.radians(0.0), np.radians(0.0))

    '''
    wp2 = create_pose(zero_pos, [0.0, 0.0, 0.0], 0.45, 0.0, -0.739, np.radians(180), np.radians(0.0), np.radians(-180))
    wp3 = create_pose(zero_pos, [0.0, 0.0, 0.0], 0.47, 0.0, -0.739, np.radians(180), np.radians(0.0), np.radians(-180))
    '''

    #def  create_pose(pos,      rpy,             dx, dy, dz, droll, dpitch, dyaw):

    # (3) Moving to wp1 by "plan and execute" method.
    rospy.loginfo("Moving to wp1 by 'plan and execute' method.")
    arm.set_start_state_to_current_state()           # set start
    arm.set_pose_target(wp1)                         # set target
    plan = arm.plan()                                # plan
    arm.execute(plan)                                # execute
    rospy.loginfo(" --> " + str(arm.get_current_pose().pose))

'''
    # (4) Moving to wp2,wp3 "compute_cartesian_path" method.
    rospy.loginfo("Moving to wp2,wp3 by 'cartesian path' method.")
    waypoints = [wp2, wp3]
    (plan, fraction) = arm.compute_cartesian_path(waypoints, 0.01, 1000.0)
    arm.execute(plan, wait=True)
    rospy.loginfo(" --> " + str(arm.get_current_pose().pose))

    # (5) Moving to wp2,wp3 "compute_cartesian_path" method.
    rospy.loginfo("Moving to wp3,w4 by 'cartesian path' method.")
    waypoints = [wp3, wp4]
    (plan, fraction) = arm.compute_cartesian_path(waypoints, 0.01, 1000.0)
    arm.execute(plan, wait=True)
    rospy.loginfo(" --> " + str(arm.get_current_pose().pose))

    # (6) Moving to wp2,wp3 "compute_cartesian_path" method.
    rospy.loginfo("Moving to wp4,wp5 by 'cartesian path' method.")
    waypoints = [wp4, wp5]
    (plan, fraction) = arm.compute_cartesian_path(waypoints, 0.01, 1000.0)
    arm.execute(plan, wait=True)
    rospy.loginfo(" --> " + str(arm.get_current_pose().pose))

    # (7) Moving to wp2,wp3 "compute_cartesian_path" method.
    rospy.loginfo("Moving to wp5,wp6 by 'cartesian path' method.")
    waypoints = [wp5, wp6]
    (plan, fraction) = arm.compute_cartesian_path(waypoints, 0.01, 1000.0)
    arm.execute(plan, wait=True)
    rospy.loginfo(" --> " + str(arm.get_current_pose().pose))

    # (8) Moving to wp2,wp3 "compute_cartesian_path" method.
    rospy.loginfo("Moving to wp6,wp7 by 'cartesian path' method.")
    waypoints = [wp6, wp7]
    (plan, fraction) = arm.compute_cartesian_path(waypoints, 0.01, 1000.0)
    arm.execute(plan, wait=True)
    rospy.loginfo(" --> " + str(arm.get_current_pose().pose))

    # (9) Moving to wp2,wp3 "compute_cartesian_path" method.
    rospy.loginfo("Moving to wp7,wp8 by 'cartesian path' method.")
    waypoints = [wp7, wp8]
    (plan, fraction) = arm.compute_cartesian_path(waypoints, 0.01, 1000.0)
    arm.execute(plan, wait=True)
    rospy.loginfo(" --> " + str(arm.get_current_pose().pose))

    # (10) Moving to wp2,wp3 "compute_cartesian_path" method.
    rospy.loginfo("Moving to wp8,wp9 by 'cartesian path' method.")
    waypoints = [wp8, wp9]
    (plan, fraction) = arm.compute_cartesian_path(waypoints, 0.01, 1000.0)
    arm.execute(plan, wait=True)
    rospy.loginfo(" --> " + str(arm.get_current_pose().pose))

    # (11) Moving to wp2,wp3 "compute_cartesian_path" method.
    rospy.loginfo("Moving to wp9,wp10 by 'cartesian path' method.")
    waypoints = [wp9, wp10]
    (plan, fraction) = arm.compute_cartesian_path(waypoints, 0.01, 1000.0)
    arm.execute(plan, wait=True)
    rospy.loginfo(" --> " + str(arm.get_current_pose().pose))

"""
    # (12) Moving to wp2,wp3 "compute_cartesian_path" method.
    rospy.loginfo("Moving to wp2,wp3 by 'cartesian path' method.")
    waypoints = [wp10, wp11]
    (plan, fraction) = arm.compute_cartesian_path(waypoints, 0.01, 1000.0)
    arm.execute(plan, wait=True)
    rospy.loginfo(" --> " + str(arm.get_current_pose().pose))

    # (13) Moving to wp2,wp3 "compute_cartesian_path" method.
    rospy.loginfo("Moving to wp2,wp3 by 'cartesian path' method.")
    waypoints = [wp11, wp12]
    (plan, fraction) = arm.compute_cartesian_path(waypoints, 0.01, 1000.0)
    arm.execute(plan, wait=True)
    rospy.loginfo(" --> " + str(arm.get_current_pose().pose))

    # (4) Moving to wp2,wp3 "compute_cartesian_path" method.
    rospy.loginfo("Moving to wp2,wp3 by 'cartesian path' method.")
    waypoints = [wp12, wp13]
    (plan, fraction) = arm.compute_cartesian_path(waypoints, 0.01, 1000.0)
    arm.execute(plan, wait=True)
    rospy.loginfo(" --> " + str(arm.get_current_pose().pose))
'''




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
    commander.set_max_velocity_scaling_factor(0.1)
    commander.set_max_acceleration_scaling_factor(0.07)
    commander.set_goal_orientation_tolerance(0.001)
    commander.set_goal_position_tolerance(0.001)
    commander.set_planning_time(150.0)
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


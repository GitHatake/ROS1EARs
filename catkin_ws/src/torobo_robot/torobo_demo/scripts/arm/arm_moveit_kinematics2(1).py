#! /usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import tf
import numpy as np
import moveit_commander
from std_msgs.msg import Header
from geometry_msgs.msg import Pose, PoseStamped, TransformStamped
from moveit_msgs.srv import GetPositionFK, GetPositionIK
from moveit_msgs.msg import RobotState, PositionIKRequest

import csv
import pprint


def main():
    with open("/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_demo/scripts/arm/test/125/0125.csv") as csv_f:
        reader = csv.reader(csv_f)
        csv_str = [row for row in reader]

    csv_float = [[float(v) for v in row] for row in csv_str]
    csv_line = len(csv_str)

    torobo = Torobo(movegroup="arm", tooltip="arm/link_7")

    for j in range(csv_line):
        #res = torobo.compute_fk(joint_angles=np.radians([csv_float[j][0], csv_float[j][1], csv_float[j][2], csv_float[j][3], csv_float[j][4], csv_float[j][5], csv_float[j][6]]))
        res = torobo.compute_fk(joint_angles=[csv_float[j][0], csv_float[j][1], csv_float[j][2], csv_float[j][3], csv_float[j][4], csv_float[j][5], csv_float[j][6]])
        #res = torobo.compute_ik(x=csv_float[j][0], y=csv_float[j][1], z=(csv_float[j][2]+1.775), roll=np.radians(csv_float[j][3]), pitch=np.radians(csv_float[j][4]), yaw=np.radians(csv_float[j][5]))

class Torobo:

    def __init__(self, movegroup, tooltip):
        """
        constructor of this class

        Parameters
        ----------
        movegroup : string
            Specify move group's name(string) you want to operate. Selectable move group is written in moveit_config's srdf file.
        tooltip   : string
            Specify tooltip's name(string) you want to set position.
        """

        rospy.init_node("toroboarm_moveit_kinematics2_node", anonymous=True)
        rospy.Rate(1)
        rospy.sleep(1)

        # load MoveGroupCommander by string('arm') registerd in 'torobo.srdf'
        self._robot = moveit_commander.MoveGroupCommander(movegroup, robot_description=rospy.get_namespace() +"robot_description", ns=rospy.get_namespace())
        self._active_joints = self._robot.get_active_joints()
        self._tooltip = tooltip

        # load fk/ik service
        rospy.loginfo("loading fk")
        rospy.wait_for_service('compute_fk')
        rospy.wait_for_service('compute_ik')
        try:
            self._moveit_fk = rospy.ServiceProxy('compute_fk', GetPositionFK)
            self._moveit_ik = rospy.ServiceProxy('compute_ik', GetPositionIK)
        except rospy.ServiceException, e:
            rospy.logerror("Service call failed: %s"%e)


    def compute_fk(self, joint_angles):
        """
        Function for computing forward kinematics

        Parameters
        ----------
        joint_angles : list
            list of joint's angles [rad]

        Returns
        -------
        x, y, z, roll, pitch, yaw : float
            result of compute_fk (position(meter) and pose(radian))
        """

        rospy.loginfo("---- compute fk ----")

        # check input array length
        if len(self._active_joints) != len(joint_angles):
            rospy.logwarn("joint_angles doesn't matches active_joints")
            num_diff = len(self._active_joints) - len(joint_angles)
            if num_diff > 0:
                for _ in range(num_diff):
                    joint_angles = np.append(joint_angles, 0.0)

        # print input
        rospy.loginfo("[input]")
        for i in range(len(self._active_joints)):
            rospy.loginfo("    {0} : {1:.2f}".format(self._active_joints[i], np.degrees(joint_angles[i])))

        # create messages
        header = Header(0, rospy.Time.now(), "world")
        rs = RobotState()
        rs.joint_state.name = self._active_joints
        rs.joint_state.position = joint_angles

        # get forward kinematics solution
        fk_result = self._moveit_fk(header, [self._tooltip], rs)
        assert len(fk_result.pose_stamped) > 0, "fk has no solution"
        pose = fk_result.pose_stamped[0].pose
        euler = tf.transformations.euler_from_quaternion(
            (pose.orientation.x, pose.orientation.y, pose.orientation.z, pose.orientation.w)
        )

        # print result
        rospy.loginfo("[output]")
        rospy.loginfo("    x     : {:.2f}".format(pose.position.x))
        rospy.loginfo("    y     : {:.2f}".format(pose.position.y))
        rospy.loginfo("    z     : {:.2f}".format(pose.position.z))
        rospy.loginfo("    roll  : {:.2f}".format(np.degrees(euler[0])))
        rospy.loginfo("    pitch : {:.2f}".format(np.degrees(euler[1])))
        rospy.loginfo("    yaw   : {:.2f}".format(np.degrees(euler[2])))
        
        with open('/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_EARs2021/scripts/arm/test/125.csv','a') as f:
            writer = csv.writer(f)
            writer.writerow([pose.position.x,pose.position.y,(pose.position.z),np.degrees(euler[0]),np.degrees(euler[1]),np.degrees(euler[2])])
        
        return pose.position.x, pose.position.y, pose.position.z, euler[0], euler[1], euler[2]


    def compute_ik(self, x, y, z, roll, pitch, yaw):
        """
        Function for computing inverse kinematics

        Parameters
        ----------
        x, y, z, roll, pitch, yaw : float
            tooltip's position(meter) and pose(radian)

        Returns
        -------
        joint_state : JointState
            result of compute_ik (list of joint angles)
        """

        rospy.loginfo("---- compute ik ----")

        # print input
        rospy.loginfo("[input]")
        rospy.loginfo("    x     : {:.2f}".format(x))
        rospy.loginfo("    y     : {:.2f}".format(y))
        rospy.loginfo("    z     : {:.2f}".format(z))
        rospy.loginfo("    roll  : {:.2f}".format(np.degrees(roll)))
        rospy.loginfo("    pitch : {:.2f}".format(np.degrees(pitch)))
        rospy.loginfo("    yaw   : {:.2f}".format(np.degrees(yaw)))

        quaternion = tf.transformations.quaternion_from_euler(roll, pitch, yaw)

        # create request
        req = PositionIKRequest()
        req.timeout = rospy.Duration(5.0)
        req.ik_link_name = self._tooltip
        req.pose_stamped.header.frame_id = "world"
        req.pose_stamped.pose.position.x = x
        req.pose_stamped.pose.position.y = y
        req.pose_stamped.pose.position.z = z
        req.pose_stamped.pose.orientation.x = quaternion[0]
        req.pose_stamped.pose.orientation.y = quaternion[1]
        req.pose_stamped.pose.orientation.z = quaternion[2]
        req.pose_stamped.pose.orientation.w = quaternion[3]
        req.robot_state.joint_state.name = self._active_joints
        req.robot_state.joint_state.position = self._robot.get_current_joint_values() # current values as seeds
        req.group_name = self._robot.get_name()
        req.avoid_collisions = False

        # get ik result
        ik_result = self._moveit_ik(req).solution

        # print result
        rospy.loginfo("[output]")
        for i in range(len(ik_result.joint_state.name)):
            joint_name = ik_result.joint_state.name[i]
            if joint_name in self._active_joints:
                rospy.loginfo("    {0} : {1:.2f}".format(joint_name, np.degrees(ik_result.joint_state.position[i])))
"""    
        with open('/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_demo/scripts/arm/test/test12.csv','a') as f:
            writer = csv.writer(f)
            writer.writerow([np.degrees(ik_result.joint_state.position[0]), np.degrees(ik_result.joint_state.position[1]), np.degrees(ik_result.joint_state.position[2]), np.degrees(ik_result.joint_state.position[3]), np.degrees(ik_result.joint_state.position[4]), np.degrees(ik_result.joint_state.position[5]), np.degrees(ik_result.joint_state.position[6])])

   
        return ik_result.joint_state

"""
if __name__ == '__main__':
    main()


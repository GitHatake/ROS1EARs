#! /usr/bin/env python
# -*- coding: utf-8 -*-


import rospy
from torobo_msgs.msg import ToroboJointState

def main():
    rospy.init_node("toroboarm_sub_test_node", anonymous=True)

    rospy.Subscriber(rospy.get_namespace() + 'joint_state_server/arm_controller/torobo_joint_state', ToroboJointState, callback2, queue_size=1, tcp_nodelay=True)
    rospy.spin()

def callback2(msg):
    rospy.loginfo(msg.position)


if __name__ == '__main__':
    main()

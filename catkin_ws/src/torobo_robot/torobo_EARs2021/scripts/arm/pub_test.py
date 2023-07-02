#! /usr/bin/env python
# -*- coding: utf-8 -*-


import rospy
from torobo_msgs.msg import test_message

def main():
    rospy.init_node("toroboarm_pub_test_node", anonymous=True)

    test_pub1 = rospy.Publisher('test/pub1', test_message, queue_size=10)

    msg1 = test_message()
    msg1.test_float1 = 0.0
    msg1.test_float2 = 0.0

    r = rospy.Rate(1)
    rospy.Subscriber(rospy.get_namespace() + 'test/pub2', test_message, callback1, queue_size=1, tcp_nodelay=True)

    while not rospy.is_shutdown():
        test_pub1.publish(msg1)
        msg1.test_float1 += 1.0
        msg1.test_float2 += 0.1
        r.sleep()

def callback1(msg2):
        rospy.loginfo(msg2)

if __name__ == '__main__':
    main()

#!/usr/bin/env python
## -*- coding: utf-8 -*-
import rospy
from torobo_msgs.srv import SetZeroEffort
import sys
from os import path 

class SetZeroEffortClient(object):
    def __init__(self, ns):
        if (ns[-1] != "/"):
            ns += "/"
        self._ns = ns
        self.service = rospy.ServiceProxy(self._ns + 'set_zero_effort', SetZeroEffort)

    def call_service(self, joint_names):
        rospy.loginfo('set_zero_effort service client is called')
        if (type(joint_names) == str):
            joint_names = list([joint_names])
        try:
            response = self.service(joint_names)
            ret = "failed"
            if response.success:
                ret = "succeeded"
            rospy.loginfo('set_zero_effort [%s] is %s' % (joint_names, ret))
        except rospy.ServiceException, e:
            rospy.loginfo("Service call failed: %s" % e)

if __name__ == '__main__':
    if (len(sys.argv) > 2):
        ns = sys.argv[1]
        joint_names = sys.argv[2:]
        nodeName = path.splitext(path.basename(__file__))[0]
        rospy.init_node(nodeName)
        client = SetZeroEffortClient(ns)
        client.call_service(joint_names)
    else:
        print "invalid args"
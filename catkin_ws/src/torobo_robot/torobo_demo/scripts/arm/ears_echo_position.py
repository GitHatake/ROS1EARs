#! /usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
from torobo_driver import torobo_easy_command

if __name__ == '__main__':
    rospy.init_node('toroboarm_easy_command_node')

    controller = '/torobo/arm_controller'

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "r all 0")
    # wait a while to send command
    rospy.sleep(0.5)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "s all 1")
    # wait a while to send command
    rospy.sleep(0.5)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 1 -90 5")
    # wait a while to send command
    rospy.sleep(0.5)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 2 65 5")
    # wait a while to send command
    rospy.sleep(0.5)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 3 0 5")
    # wait a while to send command
    rospy.sleep(0.5)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 4 40 5")
    # wait a while to send command
    rospy.sleep(0.5)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 5 0 5")
    # wait a while to send command
    rospy.sleep(0.5)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 6 70 5")
    # wait a while to send command
    rospy.sleep(0.5)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 7 0 5")
    # wait a while to send command
    rospy.sleep(0.5)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "ts all")
    # wait a while to send command
    rospy.sleep(7.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "s all 0")
    # wait a while to send command
    rospy.sleep(0.5)

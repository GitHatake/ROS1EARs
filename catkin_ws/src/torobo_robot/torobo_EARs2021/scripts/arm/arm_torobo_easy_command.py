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
    torobo_easy_command.SendEasyCommandText(controller, "tpts 1 -101.8 5")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 2 -71.8 5")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 3 69.5 5")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 4 69.2 5")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 5 76.2 5")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 6 117.2 5")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 7 6.3 5")
    # wait a while to send command
    rospy.sleep(0.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "ts all")
    # wait a while to send command
    rospy.sleep(5.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 1 -101.8 -1.35 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 2 -74.7 -3.4 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 3 70.5 -4.8 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 4 70.8 0.1 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 5 78.2 4.9 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 6 112.4 -18.3 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 7 5.5 -1.6 1")
    # wait a while to send command
    rospy.sleep(0.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "ts all")
    # wait a while to send command
    rospy.sleep(1.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 1 -102.8 0.73 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 2 -77.7 0.185 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 3 68.0 0.0 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 4 70.8 0.0 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 5 81.7 0 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 6 100.8 1.4 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 7 2.5 0.9 1")
    # wait a while to send command
    rospy.sleep(0.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "ts all")
    # wait a while to send command
    rospy.sleep(1.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 1 -101.6 0.2 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 2 -74.5 0.4 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 3 70.6 1.0 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 4 70.8 0.0 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 5 77.1 -3.5 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 6 115.2 6.9 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 7 5.5 0 1")
    # wait a while to send command
    rospy.sleep(0.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "ts all")
    # wait a while to send command
    rospy.sleep(1.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 1 -104.7 -5.4 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 2 -75.7 -1.2 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 3 69.9 -2.7 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 4 66.7 -7.3 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 5 79.8 0.2 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 6 107.6 -8.8 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 7 6.4 0.0 1")
    # wait a while to send command
    rospy.sleep(0.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "ts all")
    # wait a while to send command
    rospy.sleep(1.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 1 -105.1 2.5 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 2 -76.4 7.5 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 3 69.1 0.7 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 4 66.3 0.0 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 5 80.6 -7.7 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 6 105.5 19 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 7 6.2 4.1 1")
    # wait a while to send command
    rospy.sleep(0.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "ts all")
    # wait a while to send command
    rospy.sleep(1.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 1 -104.1 0.3 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 2 -72.8 0.1 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 3 71.8 -0.7 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 4 66.2 -0.3 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 5 77.5 0.0 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 6 116.9 0.0 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 7 8.3 -0.4 1")
    # wait a while to send command
    rospy.sleep(0.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "ts all")
    # wait a while to send command
    rospy.sleep(1.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 1 -104.3 0 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 2 -71.4 0 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 3 69.9 0 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 4 65.1 0 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 5 76.2 0 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 6 117.6 0 1")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpvt 7 7.8 0 1")
    # wait a while to send command
    rospy.sleep(0.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "ts all")
    # wait a while to send command
    rospy.sleep(1.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 1 0 5")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 2 0 5")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 3 0 5")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 4 0 5")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 5 0 5")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 6 0 5")
    # wait a while to send command
    rospy.sleep(0.0)
    # send command
    torobo_easy_command.SendEasyCommandText(controller, "tpts 7 0 5")
    # wait a while to send command
    rospy.sleep(0.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "ts all")
    # wait a while to send command
    rospy.sleep(5.0)

    # send command
    torobo_easy_command.SendEasyCommandText(controller, "s all 0")
    # wait a while to send command
    rospy.sleep(0.5)

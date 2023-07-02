#! /usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
from torobo_driver import torobo_easy_command
from torobo_msgs.msg import test_message
import csv
import numpy as np

with open("/home/aokilablinuxws/easy_command_pos.csv") as pos_data_f:
    reader1 = csv.reader(pos_data_f)
    pos_data_str = [row for row in reader1]

csv_line = len(pos_data_str)
pos_data_float = [[float(v) for v in row] for row in pos_data_str]

with open("/home/aokilablinuxws/easy_command_vel.csv") as vel_data_f:
    reader2 = csv.reader(vel_data_f)
    vel_data_str = [row for row in reader2]

vel_data_float = [[float(v) for v in row] for row in vel_data_str]

pos_data_float = np.degrees(pos_data_float)
vel_data_float = np.degrees(vel_data_float)

def main():
    rospy.init_node('toroboarm_easy_command_test_node')
    controller = '/torobo/arm_controller'

    torobo_easy_command.SendEasyCommandText(controller, "r all 0")
    rospy.sleep(0.5)
    torobo_easy_command.SendEasyCommandText(controller, "s all 1")
    rospy.sleep(0.5)

    for i in range(7):
        torobo_easy_command.SendEasyCommandText(controller, ("tpts %d %f 5"%((i+1), pos_data_float[0][i])))
        rospy.sleep(0.0)
    torobo_easy_command.SendEasyCommandText(controller, "ts all")
    rospy.sleep(5.0)

    for i in range(1, csv_line):
        for j in range(7):
            torobo_easy_command.SendEasyCommandText(controller, ("tpvt %d %f %f 1.0"%((j+1), pos_data_float[i][j], vel_data_float[i][j])))
            rospy.sleep(0.0)
        torobo_easy_command.SendEasyCommandText(controller, "ts all")
        rospy.sleep(1)

    for i in range(7):
        torobo_easy_command.SendEasyCommandText(controller, ("tpts %d 0 5"%((i+1))))
        rospy.sleep(0.0)
    torobo_easy_command.SendEasyCommandText(controller, "ts all")
    rospy.sleep(5.0)

    torobo_easy_command.SendEasyCommandText(controller, "s all 0")
    rospy.sleep(0.5)


if __name__ == '__main__':
    main()
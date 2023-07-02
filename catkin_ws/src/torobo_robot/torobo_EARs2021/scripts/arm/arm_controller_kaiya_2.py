#! /usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
from torobo_driver import torobo_easy_command
from torobo_msgs.msg import ControllData, CalculateData, ToroboJointState
import pyrealsense2 as rs
import numpy as np
import csv

JointValue = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
wait_callback = False
via_data = [0, 0, 0, 0, 0, 0, 0]
Hz = 10.

"""
WIDTH = 640
HEIGHT = 480
FPS = 60
THRESHOLD = 1.5  # これより遠い距離の画素を無視する
BG_PATH = "./image.png"  # 背景画像のパス
x = 320 #深度情報取得位置
y = 240
"""

with open("/home/aokilablinuxws/kaiya_posdata/arm_position_10Hz_pos.csv") as pos_data_f:
    reader1 = csv.reader(pos_data_f)
    pos_data_str = [row for row in reader1]

csv_line = len(pos_data_str)
pos_data_float = [[float(v) for v in row] for row in pos_data_str]

with open("/home/aokilablinuxws/kaiya_posdata/arm_position_10Hz_vel.csv") as vel_data_f:
    reader2 = csv.reader(vel_data_f)
    vel_data_str = [row for row in reader2]

vel_data_float = [[float(v) for v in row] for row in vel_data_str]

pos_data_float = np.degrees(pos_data_float)
vel_data_float = np.degrees(vel_data_float)


def main():
    rospy.init_node("toroboarm_arm_controller_kaiya_2_node", anonymous=True)
    global JointValue, wait_callback, via_data
    controller = '/torobo/arm_controller'
    torobo_easy_command.SendEasyCommandText(controller, ("s all 1"))

    """
    align = rs.align(rs.stream.color)
    config = rs.config()
    config.enable_stream(rs.stream.color, WIDTH, HEIGHT, rs.format.bgr8, FPS)
    config.enable_stream(rs.stream.depth, WIDTH, HEIGHT, rs.format.z16, FPS)

    pipeline = rs.pipeline()
    profile = pipeline.start(config)
    """

    rospy.Subscriber(rospy.get_namespace() + 'data/calculator', CalculateData, callback, queue_size=1, tcp_nodelay=True)
    rospy.Subscriber(rospy.get_namespace() + 'joint_state_server/arm_controller/torobo_joint_state', ToroboJointState, via_observer, queue_size=1, tcp_nodelay=True)
    
    send = rospy.Publisher('data/controller', ControllData, queue_size=10)
    send_data = ControllData()
    rospy.sleep(2.0)

    for i in range(7):
        torobo_easy_command.SendEasyCommandText(controller, ("tpts %d %f 5"%((i+1), pos_data_float[0][i])))
        rospy.sleep(0.0)
    torobo_easy_command.SendEasyCommandText(controller, "ts all")
    rospy.sleep(5.0)

    for i in range(1, csv_line):
        """
        try:
            # フレーム取得
            frames = pipeline.wait_for_frames()
            aligned_frames = align.process(frames)

            color_frame = aligned_frames.get_color_frame()
            depth_frame = aligned_frames.get_depth_frame()

            # 距離情報の取得
            depth_data = depth_frame.get_distance(x,y)
            print (depth_data)  

        finally:
            #pipeline.stop()
            a = 1
        """
        
        send_data.OriginalJointValue = [pos_data_float[i][0], pos_data_float[i][1], pos_data_float[i][2], pos_data_float[i][3], pos_data_float[i][4], pos_data_float[i][5], pos_data_float[i][6]]
        while not rospy.is_shutdown():
            #send_data.RealsenseDepth = depth_data
            send_data.RealsenseDepth = 0.25
            #rospy.loginfo(via_data)
            if any(elem < (Hz/2.5) for elem in via_data):
                break
        send.publish(send_data)

        if rospy.is_shutdown():
            break

        while not rospy.is_shutdown():
            if wait_callback == True:
                wait_callback = False
                break

        for j in range(7):
            torobo_easy_command.SendEasyCommandText(controller, ("tpvt %d %f %f %f"%((j+1), JointValue[j], vel_data_float[i][j], (i/Hz))))
            rospy.sleep(0.0)
        if i == (Hz/2.5-1.0):
            torobo_easy_command.SendEasyCommandText(controller, "ts all")
        
        
            
    while not rospy.is_shutdown():
        if all(elem == 0 for elem in via_data):
            break
    
    torobo_easy_command.SendEasyCommandText(controller, "home all 5")
    rospy.sleep(6.5)

    send_data.RealsenseDepth = -1.0
    send.publish(send_data)

    torobo_easy_command.SendEasyCommandText(controller, ("s all 0"))

        
def callback(recieve_data):
    global JointValue, wait_callback
    JointValue = recieve_data.CalculatedJointValue
    wait_callback = True
    """
    rospy.loginfo("----- controller -----")
    rospy.loginfo(recieve_data)
    rospy.loginfo("----- controller -----")
    """


def via_observer(joint_state):
    global via_data
    via_data = list(joint_state.trjViaRemain)
    """
    rospy.loginfo("----------")
    rospy.loginfo(via_data)
    rospy.loginfo(type(via_data))
    rospy.loginfo("----------")
    """




if __name__ == '__main__':
    main()

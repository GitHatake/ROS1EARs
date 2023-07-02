#! /usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
from torobo_driver import torobo_easy_command
import numpy as np
from torobo_msgs.srv import SetControlMode, ServoOn, ServoOff
from torobo_msgs.msg import ControllData, CalculateData, ToroboJointState
import pyrealsense2 as rs

WIDTH = 424
HEIGHT = 240
FPS = 60
THRESHOLD = 1.5  # これより遠い距離の画素を無視する
BG_PATH = "./image.png"  # 背景画像のパス

x1 = 225 #深度情報取得位置(1)
y1 = 115

x2 = 250 #深度情報取得位置(2)
y2 = 100

a = 0

def main():
    rospy.init_node('torobo_msgs_node',anonymous=True)
    
    controller = '/torobo/arm_controller'
    joint_names = ['arm/joint_1','arm/joint_2','arm/joint_3','arm/joint_4','arm/joint_5','arm/joint_6','arm/joint_7']

    # Realsensen setting
    align = rs.align(rs.stream.color)
    config = rs.config()
    config.enable_stream(rs.stream.color, WIDTH, HEIGHT, rs.format.bgr8, FPS)
    config.enable_stream(rs.stream.depth, WIDTH, HEIGHT, rs.format.z16,FPS)

    pipeline = rs.pipeline()
    profile = pipeline.start(config)

    try:
        
        # Set control mode
        set_control_mode(controller, 'external_force_following', joint_names)
        # Set servo on
        set_servo_on(controller, joint_names)
        # wait a while
        rospy.sleep(8.0)
        # フレーム取得
        frames = pipeline.wait_for_frames()
        aligned_frames = align.process(frames)

        color_frame = aligned_frames.get_color_frame()
        depth_frame = aligned_frames.get_depth_frame()

        # 距離情報の取得
        first_ddata_probe = depth_frame.get_distance(x1,y1)
        #first_data_surface = depth_frame.get_distance(x2,y2)
        #print ()
        


        # Set servo off
        set_servo_off(controller, joint_names)
        # Set servo on
        set_servo_on(controller, joint_names)
        # Set control mode
        set_control_mode(controller, 'velocity', joint_names)
        # wait a while
        rospy.sleep(2.0)

        for i in range(100):
            # フレーム取得
            frames = pipeline.wait_for_frames()
            aligned_frames = align.process(frames)

            color_frame = aligned_frames.get_color_frame()
            depth_frame = aligned_frames.get_depth_frame()

            # 距離情報の取得
            second_ddata_probe = depth_frame.get_distance(x1,y1)
            second_ddata_surface = depth_frame.get_distance(x2,y2)
            print (second_ddata_probe)
            print (second_ddata_surface)
            #velocity_value = (second_ddata_probe - first_ddata_probe)/first_ddata_probe
            
            """
            if second_ddata_probe > first_ddata_probe:
                torobo_easy_command.SendEasyCommandText(controller, "v 2 %f",velocity_value)
                torobo_easy_command.SendEasyCommandText(controller, "v 4 %f",velocity_value)
                torobo_easy_command.SendEasyCommandText(controller, "v 6 %f",-2*velocity_value)
                rospy.sleep(0.1)

            elif second_ddata_probe == first_ddata_probe:
                if second_ddata_probe - second_ddata_surface > 0.001:
                    torobo_easy_command.SendEasyCommandText(controller, "v 2 %f",-velocity_value)
                    torobo_easy_command.SendEasyCommandText(controller, "v 4 %f",-velocity_value)
                    torobo_easy_command.SendEasyCommandText(controller, "v 6 %f",2*velocity_value)
                    rospy.sleep(0.2)
                elif second_ddata_probe - second_ddata_probe <= 0.001:
                    torobo_easy_command.SendEasyCommandText(controller, "v 2 0")
                    torobo_easy_command.SendEasyCommandText(controller, "v 4 0")
                    torobo_easy_command.SendEasyCommandText(controller, "v 6 0")
                    rospy.sleep(0.2)
            """
            """ 
            if second_ddata_probe > first_ddata_probe:
                torobo_easy_command.SendEasyCommandText(controller, "v 2 1")
                torobo_easy_command.SendEasyCommandText(controller, "v 4 1")
                torobo_easy_command.SendEasyCommandText(controller, "v 6 -2")
                rospy.sleep(0.05)

            elif second_ddata_probe <= first_ddata_probe:
                torobo_easy_command.SendEasyCommandText(controller, "v 2 -1")
                torobo_easy_command.SendEasyCommandText(controller, "v 4 -1")
                torobo_easy_command.SendEasyCommandText(controller, "v 6 2")
                rospy.sleep(0.05)
            """


            if second_ddata_probe > first_ddata_probe:
                torobo_easy_command.SendEasyCommandText(controller, "v 2 1")
                torobo_easy_command.SendEasyCommandText(controller, "v 4 1")
                torobo_easy_command.SendEasyCommandText(controller, "v 6 -2")

                rospy.sleep(0.1)

            elif second_ddata_probe <= first_ddata_probe:
                if second_ddata_probe - second_ddata_surface > 0.003:
                    torobo_easy_command.SendEasyCommandText(controller, "v 2 -1")
                    torobo_easy_command.SendEasyCommandText(controller, "v 4 -1")
                    torobo_easy_command.SendEasyCommandText(controller, "v 6 2")
                    rospy.sleep(0.1)
                elif second_ddata_probe - second_ddata_surface <= 0.003:
                    torobo_easy_command.SendEasyCommandText(controller, "v 2 0")
                    torobo_easy_command.SendEasyCommandText(controller, "v 4 0")
                    torobo_easy_command.SendEasyCommandText(controller, "v 6 0")
                    rospy.sleep(0.1)
            

            """a += 1

            if a > 10:
                # Set control mode
                set_control_mode(controller, 'external_force_following', joint_names)
                # Set servo on
                set_servo_on(controller, joint_names)
                break"""

        # Set control mode
        set_control_mode(controller, 'position', joint_names)
        # Set servo on
        set_servo_off(controller, joint_names)

    except rospy.ROSInterruptException:
        rospy.logerr('ROSInterruptException occurred')

    finally:
        pass

    rospy.loginfo("finished")


def set_control_mode(controller, control_mode_name, joint_names):
    # Check argument
    TRAJ = 0 # position control mode
    VELOCITY = 1 # velocity control mode
    CURRENT = 2 # current control mode
    EXTERNAL_FORCE_FOLLOWING = 5 # external force following control mode
    if control_mode_name == 'position':
        expected_value = TRAJ
    elif control_mode_name == 'velocity':
        expected_value = VELOCITY
    elif control_mode_name == 'current':
        expected_value = CURRENT
    elif control_mode_name == 'external_force_following':
        expected_value = EXTERNAL_FORCE_FOLLOWING
    else:
        e = rospy.ROSInterruptException('control_mode name is invalid')
        rospy.logerr(e)
        raise e

    # Call service
    service_name = controller + '/set_control_mode'
    rospy.wait_for_service(service_name)
    service = rospy.ServiceProxy(service_name, SetControlMode)
    rospy.loginfo('call set_control_mode service')
    response = service(control_mode_name, joint_names)

    # Check whether send is succeeded
    if not response.success:
        e = rospy.ROSInterruptException('send packet fail')
        rospy.logerr(e)
        raise e
    
    # Check whether state is updated
    success_flag = True
    for _ in range(10):
        rospy.sleep(0.1)
        msg = rospy.wait_for_message(controller + '/torobo_joint_state',ToroboJointState,0.5)
        if msg is None:
            continue
        for joint_name in joint_names:
            for i, name in enumerate(msg.name):
                if joint_name == name:
                    if msg.ctrlMode[i] != expected_value:
                        success_flag = False
        if success_flag:
            break
        else:
            continue

    if not success_flag:
        e = rospy.ROSInterruptException('state is not updated')
        rospy.logerr(e)
        raise e

    rospy.loginfo('set_control_mode service is succeeded')

def set_servo_on(controller, joint_names):
    STOP = 0
    READY = 1
    RUN = 2
    ERROR = 3
    expected_value = RUN

    # Call service
    service_name = controller + '/servo_on'
    rospy.wait_for_service(service_name)
    service = rospy.ServiceProxy(service_name, ServoOn)
    rospy.loginfo('call set_servo_on service')
    response = service(joint_names)

    # Check whether send is succeeded
    if not response.success:
        e = rospy.ROSInterruptException('send packet fail')
        rospy.logerr(e)
        raise e

    # Check whether state is updated
    success_flag = True
    for _ in range(10):
        rospy.sleep(0.1)
        msg = rospy.wait_for_message(controller + '/torobo_joint_state',ToroboJointState, 0.5)
        if msg is None:
            continue
        for joint_name in joint_names:
            for i, name in enumerate(msg.name):
                if joint_name == name:
                    if msg.systemMode[i] != expected_value:
                        success_flag = False
        if success_flag:
            break
        else:
            continue

    if not success_flag:
        e = rospy.ROSInterruptException('state is not updated')
        rospy.logerr(e)
        raise e

    rospy.loginfo('set_servo_on service is succeeded')

def set_servo_off(controller, joint_names):    
    STOP = 0
    READY = 1
    RUN = 2
    ERROR = 3
    expected_value = STOP

    # Call service
    service_name = controller + '/servo_off'
    rospy.wait_for_service(service_name)
    service = rospy.ServiceProxy(service_name, ServoOff)
    rospy.loginfo('call set_servo_on service')
    response = service(joint_names)

    # Check whether send is succeeded
    if not response.success:
        e = rospy.ROSInterruptException('send packet fail')
        rospy.logerr(e)
        raise e

    # Check whether state is updated
    success_flag = True
    for _ in range(10):
        rospy.sleep(0.1)
        msg = rospy.wait_for_message(controller + '/torobo_joint_state',ToroboJointState, 0.5)
        if msg is None:
            continue
        for joint_name in joint_names:
            for i, name in enumerate(msg.name):
                if joint_name == name:
                    if msg.systemMode[i] != expected_value:
                        success_flag = False
        if success_flag:
            break
        else:
            continue

    if not success_flag:
        e = rospy.ROSInterruptException('state is not updated')
        rospy.logerr(e)
        raise e

    rospy.loginfo('set_servo_off service is succeeded')

if __name__ == '__main__':
    main()
#!/usr/bin/env python3
# coding=utf-8

import rospy
from sensor_msgs.msg import Imu
from tf.transformations import euler_from_quaternion
import math

# IMU 回调函数
def imu_callback(msg):
    if msg.orientation_covariance[0] < 0:
        return
    # 四元数转成欧拉角
    quaternion = [
        msg.orientation.x,
        msg.orientation.y,
        msg.orientation.z,
        msg.orientation.w
    ]
    (roll,pitch,yaw) = euler_from_quaternion(quaternion)
    # 弧度换算成角度
    roll = roll*180/math.pi
    pitch = pitch*180/math.pi
    yaw = yaw*180/math.pi
    rospy.loginfo("滚转= %.0f 俯仰= %.0f 朝向= %.0f", roll, pitch, yaw)

# 主函数
if __name__ == "__main__":
    rospy.init_node("imu_data")
    # 订阅 IMU 数据话题
    imu_sub = rospy.Subscriber("/imu/data",Imu,imu_callback,queue_size=10)
    rospy.spin()
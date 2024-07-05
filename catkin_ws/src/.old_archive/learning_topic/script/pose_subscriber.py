# !/usr/bin/env python3
# -*- coding: utf-8 -*-
# subscribe the topic /turtle1/pose
# msg type: turtlesim:Pose

import rospy
from turtlesim.msg import Pose

def poseCallback(msg):
	rospy.loginfo("Turtle pose: x:%0.6f, y:%0.6f",msg.x, msg.y)
	
def pose_subscriber():
	# node init
	rospy.init_node('pose_subscriber',anonymous=True)
	
	# Create subscriber. 
	# Subscribed Topic name: /turtle1/pose
	# register call back function
	rospy.Subscriber('/turtle1/pose',Pose, poseCallback)
	
	# set loop freq
	rospy.spin()
			
if __name__=='__main__':
	pose_subscriber()

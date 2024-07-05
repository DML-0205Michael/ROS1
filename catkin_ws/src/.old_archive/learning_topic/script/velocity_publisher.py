#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
from geometry_msgs.msg import Twist

def velocity_publisher():
	# node init
	rospy.init_node('velocity_publisher',anonymous=True)
	
	# create publisher
		# Topic name: /turtle1/cmd_vel
		# msg type: geometry_msgs::Twist
		# line length: 10
	turtle_vel_pub = rospy.publisher('/turtle1/cmd_vel',Twist,queue_size=10)
	
	# set loop freq
	rate=rospy.Rate(10)
	
	while not rospu.is_shutdown():
		# init message of this (geometry_msgs::Twist) type
		vel_msg=Twist()
		vel_msg.linear.x=1.5
		vel_msg.angualr.z=0.6
		
		# publish message
		turtle_vel_pub.publish(vel_msg)
		rospy.loginfo("Publish turtle velocity command[%0.2f m/s, %0.2f rad/s]",
				vel_msg.linear.x, vel_msg.angular.z)
				
		# delay for set time loop
		rate.sleep()
		
if __name__=='__main__':
	try:
		velocity_publisher()
	except rospy.ROSInterruptException:
		pass

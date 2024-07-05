# !/usr/bin/env python3
# -*- coding: utf-8 -*-
# subscribe the topic /turtle1/pose
# msg type: turtlesim:Pose

import rospy
from learning_topic.msg import Person

def personInfoCallback(msg):
	rospy.loginfo("Subscribe person info: name:%s age:%d sex:%d",msg.name, msg.age, msg.sex)
	
def pose_subscriber():
	# node init
	rospy.init_node('person_subscriber',anonymous=True)
	
	# Create subscriber. 
	# Subscribed Topic name: /turtle1/pose
	# register call back function
	rospy.Subscriber('/person_info',Person, personInfoCallback)
	
	# set loop freq
	rospy.spin()
			
if __name__=='__main__':
	person_subscriber()

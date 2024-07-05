#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
from learning_topic.msg import Person

def person_publisher():
	# node init
	rospy.init_node('person_publisher',anonymous=True)
	
	# create publisher
		# Topic name: /person_info
		# msg type: learning_topic::Person
		# line length: 10
	person_info_pub = rospy.Publisher('/person_info',Person,queue_size=10)
	
	# set loop freq
	rate=rospy.Rate(10)
	
	while not rospu.is_shutdown():
		# init message of this (geometry_msgs::Twist) type
		person_msg=Person()
		person_msg="Tom"
		person_msg=18
		person_msg.sex=Person.male
		
		# publish message
		person_info_pub.publish(person_msg)
		rospy.loginfo("Publish person message[%s, %d, %d]",
				person_msg.name, person_msg.age, person_msg.sex)
				
		# delay for set time loop
		rate.sleep()
		
if __name__=='__main__':
	try:
		person_publisher()
	except rospy.ROSInterruptException:
		pass

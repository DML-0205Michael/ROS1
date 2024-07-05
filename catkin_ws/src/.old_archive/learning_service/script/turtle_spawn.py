#!/usr/bin/env python
# -*- coding: utf-8 -*-
# request the service: /spawn
# service data type: tuetlesim::Spawn

import sys
import rospy
from turtlesim.srv import Spawn

def turtle_spawn():
	# node init
	rospy.init_node('turtle_spawn')
	
	# create a client after found a "/spawn" service
	# connect to the service named "/spawn"
	rospy.wait_for_service('/spawn')
	try:
		add_turtle=rospy.ServiceProxy('/spawn',Spawn)
		
		# request service call, input requested data
		response=add_turtle(2.0, 2.0, 0.0, "turtle2")
		return response.name
	except rospy.ServiceException, e:
		print "Service call failed:%s"%e
				
if __name__=='__main__':
	print "Spawn turtle success [name:%s]" %(turtle_spawn())

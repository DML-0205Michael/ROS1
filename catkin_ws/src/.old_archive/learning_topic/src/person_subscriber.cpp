// subscribe the topic: /person_info
// user defined message type: learning_topic::Person

#include <ros/ros.h>
#include "learning_topic/Person.h"

void personInfoCallback(const learning_topic::Person::ConstPtr& msg){
	// print message received
	ROS_INFO("Subscribe person info: Name:%s  age:%d  sex:%d",
			msg->name.c_str(), msg->age, msg->sex);
}

int main (int argc, char **argv)
{
	// node init. Node name: velocity_publisher
	ros::init(argc, argv, "person_subscriber");
	
	// create node handle
	ros::NodeHandle n;
	
	// Create subscriber. 
	// Subscribed Topic name: /person_info
	// register call back function
	ros::Subscriber person_info_sub = n.subscribe("/person_info",10,personInfoCallback);
	
	// loop, waiting for call back function. If message coming in, call poseCallback
	ros::spin();
	
	return 0;
	
}

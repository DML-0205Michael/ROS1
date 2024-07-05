// publish the topic: /person_info
// user defined message type: learning_topic::Person
#include <ros/ros.h>
#include "learning_topic/Person.h"

int main (int argc, char **argv)
{
	// node init. Node name: velocity_publisher
	ros::init(argc, argv, "person_publisher");
	
	// create node handle
	ros::NodeHandle n;
	
	// Create publisher. 
	// Topic name: /person_info
	// message type: learning_topic::Person
	// line length=10
	ros::Publisher person_info_pub = n.advertise<learning_topic::Person>("/person_info",10);
	
	// set loop freq
	ros::Rate loop_rate(1);
	
	int count=0;
	while (ros::ok())
	{
		// init geometry_msgs::Twist message
		learning_topic::Person person_msg;
		person_msg.name="Tom";
		person_msg.age=18;
		person_msg.sex=learning_topic::Person::male;
		
		// publish message
		person_info_pub.publish(person_msg);
		ROS_INFO("Publish person info: Name:%s  Age:%d  Sex:%d",
			person_msg.name.c_str(),person_msg.age, person_msg.sex);
			
		// delay for set time loop
		loop_rate.sleep();
	}
	
	return 0;
	
}

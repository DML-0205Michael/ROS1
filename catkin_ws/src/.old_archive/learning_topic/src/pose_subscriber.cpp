// subscribe the topic: /turtle1/pose
// message type: turtlesim::Pose

#include <ros/ros.h>
#include <turtlesim/Pose.h>

void poseCallback(const turtlesim::Pose::ConstPtr& msg){
	// print message received
	ROS_INFO("Turtle pose: x:%0.6f, y:%0.6f",msg->x, msg->y);
}

int main (int argc, char **argv)
{
	// node init. Node name: velocity_publisher
	ros::init(argc, argv, "pose_subscriber");
	
	// create node handle
	ros::NodeHandle n;
	
	// Create subscriber. 
	// Subscribed Topic name: /turtle1/pose
	// register call back function
	ros::Subscriber pose_sub = n.subscribe("/turtle1/pose",10,poseCallback);
	
	// loop, waiting for call back function. If message coming in, call poseCallback
	ros::spin();
	
	return 0;
	
}

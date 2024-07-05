// run the service: /turtle_command
// service data type: std_srvs/Trigger

#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <std_srvs/Trigger.h>

ros::Publisher turtle_vel_pub;
bool pubCommand = false;

// service call back function. Input: req. Output: res
bool commandCallback(std_srvs::Trigger::Request &req,
		     std_srvs::Trigger::Response &res)
{
	pubCommand=!pubCommand;
	
	// show requested data
	ROS_INFO("Publish turtle velocity command [%s]", pubCommand==true?"Yes":"No");
	
	// set feedback data
	res.success=true;
	res.message="Change turtle command state!";
	
	return true;
}

int main (int argc, char **argv)
{
	// node init. Node name: velocity_publisher
	ros::init(argc, argv, "turtle_command_server");
	
	// create node handle
	ros::NodeHandle n;
	
	// Create server. Name: /turtle_command 
	// register call back function: commandCallback
	ros::ServiceServer command_service = n.advertiseService("/turtle_command",commandCallback);
	
	// Create a publisher
	// Topic name: /turtle1/cmd_vel
	// msg type: geometry_msgs::Twist
	// Line length: 10
	turtle_vel_pub=n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel",10);
	
	// wait for call back function
	ROS_INFO("Ready to receive turtle command.");
	
	// set loop freq
	ros::Rate loop_rate(10);
	
	while (ros::ok()){
		// check the line of call back function
		ros::spinOnce();
		
		// if true, publish speed command
		if(pubCommand){
			ROS_INFO("if, pubCommand=true.");
			// init geometry_msgs::Twist message
			geometry_msgs::Twist vel_msg;
			
			vel_msg.linear.x=1.5;
			vel_msg.angular.z=1.2;
			
			// publish message
			turtle_vel_pub.publish(vel_msg);
		}
			
		// delay for set time loop
		loop_rate.sleep();
	}
	
	return 0;

	
}

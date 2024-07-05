#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

int main (int argc, char **argv)
{
	// node init. Node name: velocity_publisher
	ros::init(argc, argv, "velocity_publisher");
	
	// create node handle
	ros::NodeHandle n;
	
	// Create publisher. 
	// Topic name: /turtle/cmd_vel
	// message type: geometry_msgs:Twist
	// line length=10
	ros::Publisher turtle_vel_pub = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel",10);
	
	// set loop freq
	ros::Rate loop_rate(10);
	
	int count=0;
	while (ros::ok())
	{
		// init geometry_msgs::Twist message
		geometry_msgs::Twist vel_msg;
		vel_msg.linear.x=0.5;
		vel_msg.angular.z=0.2;
		
		// publish message
		turtle_vel_pub.publish(vel_msg);
		ROS_INFO("Publish turtle velocity command[%0.2f m/s, %0.2f rad/s]",
			vel_msg.linear.x, vel_msg.angular.z);
			
		// delay for set time loop
		loop_rate.sleep();
	}
	
	return 0;
	
}

// set and get the parameters in turtle sim

#include <string>
#include <ros/ros.h>
#include <std_srvs/Empty.h>

int main (int argc, char **argv)
{
	int red, green, blue;
	
	// node init. 
	ros::init(argc, argv, "parameter_config");
	
	// create node handle
	ros::NodeHandle node;
	
	// get background color
	ros::param::get("/turtlesim/background_r",red);
	ros::param::get("/turtlesim/background_g",green);
	ros::param::get("/turtlesim/background_b",blue);
	
	ROS_INFO("Get Background color: [%d, %d, %d]",red, green, blue);
	
	// set background color
	ros::param::set("/turtlesim/background_r",255);
	ros::param::set("/turtlesim/background_g",255);
	ros::param::set("/turtlesim/background_b",255);
	ROS_INFO("Set Background color: [255, 255, 255]");
	
	// get background color
	ros::param::get("/turtlesim/background_r",red);
	ros::param::get("/turtlesim/background_g",green);
	ros::param::get("/turtlesim/background_b",blue);
	
	ROS_INFO("Get Background color again: [%d, %d, %d]",red, green, blue);
	
	// call service, refresh color
	ros::service::waitForService("/clear");
	ros::ServiceClient clear_background=node.serviceClient<std_srvs::Empty>("/clear");
	std_srvs::Empty srv;
	clear_background.call(srv);
	
	sleep(1);
	
	
	return 0;

	
}

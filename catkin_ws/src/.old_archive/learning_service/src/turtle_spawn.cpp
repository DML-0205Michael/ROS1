// request the service: /spawn
// service data type: turtlesim::Spawn

#include <ros/ros.h>
#include <turtlesim/Spawn.h>

int main (int argc, char **argv)
{
	// node init. Node name: velocity_publisher
	ros::init(argc, argv, "turtle_spawn");
	
	// create node handle
	ros::NodeHandle node;
	
	// create a client after found a "/spawn" service
	// connect to the service named "/spawn"
	ros::service::waitForService("/spawn");
	ros::ServiceClient add_turtle = node.serviceClient<turtlesim::Spawn>("/spawn");
	
	// init requested data of turtlesim::Spawn
	turtlesim::Spawn srv;
	srv.request.x=2.0;
	srv.request.y=2.0;
	srv.request.name="turtle2";
	
	// request service call
	ROS_INFO("Call service to spawn turtle[x:%0.6f, y:%0.6f, name:%s]",
		srv.request.x, srv.request.y, srv.request.name.c_str());
		
	add_turtle.call(srv);
	
	// show called service result
	ROS_INFO("Spawn turtle success [name:%s]", srv.response.name.c_str());
		
	return 0;
	
}

// run the service: /turtle_command
// service data type: std_srvs/Trigger

#include <ros/ros.h>
#include <learning_service/Person.h>

// service call back function. Input: req. Output: res
bool personCallback(learning_service::Person::Request &req,
		     learning_service::Person::Response &res)
{
	// show requested data
	ROS_INFO("Server: Person: name:%s  age:%d  sex:%d", req.name.c_str(),req.age,req.sex);
	
	// set feedback data
	res.result="Yeah your mom";
	
	return true;
}

int main (int argc, char **argv)
{
	// node init. Node name: velocity_publisher
	ros::init(argc, argv, "person_server");
	
	// create node handle
	ros::NodeHandle n;
	
	// Create server. Name: /show_person
	// register call back function: personCallback
	ros::ServiceServer person_service = n.advertiseService("/show_person",personCallback);
	
	// wait for call back function
	ROS_INFO("Ready to show person info.");
	ros::spin();
	
	return 0;

	
}

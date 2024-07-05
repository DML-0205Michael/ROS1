// request the service: /show_person
// service data type: learning_service::Person

#include <ros/ros.h>
#include <learning_service/Person.h>

int main (int argc, char **argv)
{
	// node init. Node name: velocity_publisher
	ros::init(argc, argv, "person_client");
	
	// create node handle
	ros::NodeHandle node;
	
	// create a client after found a /show_person service. connect to the service /show_person
	ros::service::waitForService("/show_person");
	ros::ServiceClient person_client=node.serviceClient<learning_service::Person>("/show_person");
	
	// init requested data of learning_service::Person
	learning_service::Person srv; // "Person" must have the same name as the srv file Person.srv
	srv.request.name="your mom";
	srv.request.age=233;
	srv.request.sex=learning_service::Person::Request::female;
	
	// request service call
	ROS_INFO("Call service to show person[name:%s,age:%d, sex:%d]",
		srv.request.name.c_str(),srv.request.age, srv.request.sex);
		
	person_client.call(srv);
	
	// show service result
	ROS_INFO("Client: Show person result: %s", srv.response.result.c_str());
	
	return 0;

	
}

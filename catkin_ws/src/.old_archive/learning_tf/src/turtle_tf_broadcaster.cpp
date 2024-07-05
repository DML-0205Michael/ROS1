// generate tf data, calculate and publish speed command of turtle2

#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <turtlesim/Pose.h>

std::string turtle_name;

void poseCallback(const turtlesim::PoseConstPtr& msg)
{
	// create tf broadcaster
	static tf::TransformBroadcaster br;
	
	// init tf data
	tf::Transform transform;
					//  x      y      z
	transform.setOrigin(tf::Vector3(msg->x, msg->y, 0.0));
	tf::Quaternion q;
	    //   x y     z
	q.setRPY(0,0,msg->theta);
	transform.setRotation(q);
	
	// broadcast data between coords sys of world and coords sys of turtle
	br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "world", turtle_name));
	               // time_stamp         (relative coords, time_now,  coord_sys_1, coords_sys_2)
}

int main(int argc, char** argv){
	// init ros node
	ros::init(argc, argv, "my_tf_broadcaster");
	
	//input parameter as turtle's name
	if (argc!=2){
		ROS_ERROR("Need turtle name as argument");
		return -1;
	}
	
	turtle_name=argv[1];
	
	// subscribe the topic of turtle's pose
	ros::NodeHandle node;
	ros::Subscriber sub=node.subscribe(turtle_name+"/pose",10,&poseCallback);
	
	// loop to wait call back function
	ros::spin();
	
	return 0;
}

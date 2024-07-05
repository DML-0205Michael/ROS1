#include <ros/ros.h>
#include <std_msgs/Float32.h>
#include <std_msgs/String.h>

ros::Publisher pub;

void ardCallback(const std_msgs::Float32& msg){
    // float data_in=msg.data;
    ROS_INFO("Received from Mega=%.3f. ", msg.data);
    //msg.data*=-1;
    std_msgs::Float32 new_msg;
    new_msg.data=-msg.data;
    ROS_WARN("Modified=%.3f \n", new_msg.data);
    pub.publish(new_msg);
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "ros_pub");
    ros::NodeHandle n;

    ros::Subscriber sub=n.subscribe("/ard_pub",10, ardCallback);
    pub=n.advertise<std_msgs::Float32>("/ros_pub",10);

    ros::spin();

    return 0;
}

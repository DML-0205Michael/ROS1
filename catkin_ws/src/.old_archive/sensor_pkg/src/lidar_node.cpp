#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <geometry_msgs/Twist.h>

ros::Publisher vel_pub;

int count=0;

void lidarCallback(const sensor_msgs::LaserScan msg){
    float mid_dist=msg.ranges[180];
    ROS_INFO("Front dist=%.3f meter", mid_dist);

    geometry_msgs::Twist vel_cmd;
    if (count>0){
        count--;
        return;
    }
    if(mid_dist<1.5){
        vel_cmd.angular.z=0.5;
        count=50;
    } else vel_cmd.linear.x=0.1;

    vel_pub.publish(vel_cmd);
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "lidar_node");
    ros::NodeHandle n;

    ros::Subscriber lidar_sub=n.subscribe("/scan",10, lidarCallback);
    vel_pub=n.advertise<geometry_msgs::Twist>("/cmd_vel",10);

    ros::spin();

    return 0;
}

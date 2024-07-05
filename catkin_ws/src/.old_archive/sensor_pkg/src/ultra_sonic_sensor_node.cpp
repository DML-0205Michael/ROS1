#include <ros/ros.h>
#include <std_msgs/String.h>
#include <msg_pkg/carry.h>

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "ultra_sonic_sensor_node"); // node name

    ros::NodeHandle n;
                                                           // topic name
    // ros::Publisher pub = n.advertise<std_msgs::String>("/ultra_sonic_sensor",10);
    ros::Publisher pub = n.advertise<msg_pkg::carry>("/ultra_sonic_sensor",10);

    printf("Ultra sonic sensor node start.\n");
    ros::Rate loop_rate(10);

    while(ros::ok()){
        // std_msgs::String msg;
        // msg.data="Distance=";

        msg_pkg::carry msg;
        msg.grade="NB";
        msg.star=101;
        msg.data="gie gie";
        
        pub.publish(msg);
        ROS_INFO(msg.data.c_str());
        loop_rate.sleep();
    }
    return 0;
}

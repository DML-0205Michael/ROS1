#include <ros/ros.h>
#include <std_msgs/String.h>
#include <msg_pkg/carry.h>

// void motorCallback(std_msgs::String msg){
void motorCallback(msg_pkg::carry msg){
    ROS_WARN(msg.grade.c_str());
    ROS_WARN("%d star",msg.star);
    ROS_INFO(msg.data.c_str());
    // ROS_WARN(); // show info in yellow
    // printf("\n");
}

int main(int argc, char *argv[])
{
    // SETLOCALE(lc_all,"zh_CN.UTF-8");
    ros::init(argc, argv, "motor_node"); // node name, no "/"

    ros::NodeHandle n;
                                     // subscribed topic name
    ros::Subscriber sub=n.subscribe("/ultra_sonic_sensor",10,motorCallback);
    
    while (ros::ok()){
        ros::spinOnce();

    }
    return 0;
}

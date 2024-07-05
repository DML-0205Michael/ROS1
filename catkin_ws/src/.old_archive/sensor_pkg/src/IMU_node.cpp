#include <ros/ros.h>
#include <sensor_msgs/Imu.h>
#include <tf/tf.h>
#include <geometry_msgs/Twist.h>

ros::Publisher vel_pub;

void IMUCallback(sensor_msgs::Imu msg){
    if(msg.orientation_covariance[0]<0) return;
    tf::Quaternion q(
        msg.orientation.x,
        msg.orientation.y,
        msg.orientation.z,
        msg.orientation.w
    );

    double roll, pitch, yaw;
    tf::Matrix3x3(q).getRPY(roll, pitch, yaw);
    roll*=180/M_PI;
    pitch*=180/M_PI;
    yaw*=180/M_PI;

    ROS_INFO("Roll: %.1f, Pitch: %.1f, Yaw: %.1f.", roll, pitch, yaw);

    double target_yaw=90;
    double diff=target_yaw-yaw;
    geometry_msgs::Twist vel_cmd;

    vel_cmd.angular.z=diff*0.1;
    vel_cmd.linear.x=0.2;
    vel_pub.publish(vel_cmd);


}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "IMU_node");
    ros::NodeHandle n;

    ros::Subscriber sub=n.subscribe("/imu/data",10,IMUCallback);
    vel_pub=n.advertise<geometry_msgs::Twist>("/cmd_vel",10);
    ros::spin();

    return 0;
}

#include <ros/ros.h>
#include <std_msgs/Int32.h>
// #include <std_msgs/String.h>
#include <msg_pkg/to_arduino_msg.h>
#include <geometry_msgs/Twist.h>

ros::Publisher pub;

void velocityCallback(const geometry_msgs::Twist& vel_msg){
    const double R=0.078;
    const double meter_per_count_L=0.000294310812850564; 
    const double meter_per_count_R=0.000294132201307244;

	double vx=vel_msg.linear.x; // m/s
	double vth=vel_msg.angular.z; // rad/s
    ROS_INFO("vx: %.3f, vth:%.3f deg/s",vx,vth*180/M_PI);
    
    double v_R=vx-vth*R; // right wheel speed, m/s, m/1000ms
    double v_L=vx+vth*R; // left wheel speed, m/s, m/1000ms
    
    int enc1_count_per_10ms=v_R/meter_per_count_R/100;
    int enc2_count_per_10ms=v_L/meter_per_count_L/100;

    msg_pkg::to_arduino_msg new_msg;
    new_msg.M1_encoder_speed=enc2_count_per_10ms; // encoder count per 10ms
    new_msg.M2_encoder_speed=enc1_count_per_10ms; // encoder count per 10ms
    // ROS_INFO("Enc1: %d, Enc2: %.d",enc1_count_per_10ms,enc2_count_per_10ms);
    pub.publish(new_msg);
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "ros_to_ard_pub");
    ros::NodeHandle n;

    ros::Subscriber sub=n.subscribe("/cmd_vel",10,velocityCallback);
    pub=n.advertise<msg_pkg::to_arduino_msg>("/ros_to_ard_pub",10);

    ros::spin();

    return 0;
}

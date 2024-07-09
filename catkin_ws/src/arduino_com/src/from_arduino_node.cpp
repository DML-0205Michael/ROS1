#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>
#include <msg_pkg/from_arduino_msg.h>

int enc1, enc2;
double vth = 0.0;

void ardCallback(const msg_pkg::from_arduino_msg& msg){
  enc1=msg.encoder1; // right speed, count per 10ms (Left if facing bot)
  enc2=msg.encoder2; // speed, count per 10ms
  // if (enc1==0 && enc2 ==0){
  //   vth=0;
  // } else 
  // vth=(msg.gz+15)/131/180*M_PI; // angular speed, rad/s
  // ROS_INFO("Enc1: %d, Enc2: %d, gz: %.5f",enc1,enc2,vth);
}

int main(int argc, char** argv){
  ros::init(argc, argv, "odometry_publisher");

  ros::NodeHandle n;
  ros::Publisher odom_pub = n.advertise<nav_msgs::Odometry>("odom", 50);
  tf::TransformBroadcaster odom_broadcaster;

  ros::Subscriber sub=n.subscribe("/ard_to_ros_pub",10, ardCallback);

  // const float deg_per_count=1.07053757; // degrees per count
  // const float wheel_diameter=0.064; // meter
  const double meter_per_count_L=0.000294310812850564; 
  const double meter_per_count_R=0.000294132201307244;

  double x = 0.0;
  double y = 0.0;
  double th = 0.0;

  double vx = 0;
  const double vy = 0; // can't move side ways
  // double vth = 0.1;

  ros::Time current_time, last_time;
  current_time = ros::Time::now();
  last_time = ros::Time::now();

  ros::Rate r(100.0);
  while(n.ok()){

    ros::spinOnce();               // check for incoming messages
    current_time = ros::Time::now();

    //compute odometry in a typical way given the velocities of the robot
    // double R_speed=enc1*deg_per_count/360*wheel_diameter*M_PI; // m/s=meters per 10ms
    // double L_speed=enc2*deg_per_count/360*wheel_diameter*M_PI; // m/s=meters per 10ms
    double R_speed=enc1*meter_per_count_R; // m/s=meters per 10ms
    double L_speed=enc2*meter_per_count_L;
    vx=(L_speed+R_speed)/2;
    double vth=(R_speed-L_speed)/0.157;
    // vx=(enc1+enc2)*deg_per_count/360*wheel_diameter*M_PI/0.01;

    // ROS_INFO("L_sp: %.3f, R_sp: %.3f, vx: %.3f",L_speed, R_speed, vx);
    double dt = (current_time - last_time).toSec();
    // ROS_INFO("dt: %.4f",dt*1000);
    // double delta_x = vx * cos(th) * dt;
    // double delta_y = vx * sin(th) * dt;
    double delta_x = vx * cos(th);
    double delta_y = vx * sin(th);
    double delta_th = vth * dt;

    x += delta_x;
    y += delta_y;
    th += delta_th;
    // ROS_INFO("x: %.3f, y:%.3f, th:%.3f deg",x,y,th*180/M_PI);
    //since all odometry is 6DOF we'll need a quaternion created from yaw
    geometry_msgs::Quaternion odom_quat = tf::createQuaternionMsgFromYaw(th);

    //first, we'll publish the transform over tf
    geometry_msgs::TransformStamped odom_trans;
    odom_trans.header.stamp = current_time;
    odom_trans.header.frame_id = "odom";
    odom_trans.child_frame_id = "base_link";

    odom_trans.transform.translation.x = x;
    odom_trans.transform.translation.y = y;
    odom_trans.transform.translation.z = 0.0;
    odom_trans.transform.rotation = odom_quat;

    //send the transform
    odom_broadcaster.sendTransform(odom_trans);

    //next, we'll publish the odometry message over ROS
    nav_msgs::Odometry odom;
    odom.header.stamp = current_time;
    odom.header.frame_id = "odom";

    //set the position
    odom.pose.pose.position.x = x;
    odom.pose.pose.position.y = y;
    odom.pose.pose.position.z = 0.0;
    odom.pose.pose.orientation = odom_quat;

    //set the velocity
    odom.child_frame_id = "base_link";
    odom.twist.twist.linear.x = vx;
    odom.twist.twist.linear.y = vy;
    odom.twist.twist.angular.z = vth;

    //publish the message
    odom_pub.publish(odom);

    last_time = current_time;
    r.sleep();
  }
}
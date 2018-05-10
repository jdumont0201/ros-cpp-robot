#include "ros/ros.h"
#include "led1/mode.h"
#include <wiringPi.h>
#include "std_msgs/String.h"
#include <sstream>
#define	LED	19
#include <iostream>
ros::Publisher status;

bool callback(led1::mode::Request & req, led1::mode::Response & res){
	if(req.status){
		ROS_INFO("led1:on");
		digitalWrite(LED,HIGH);//delay(500);digitalWrite(LED,LOW);
	}else{
		ROS_INFO("led1:off");
		digitalWrite(LED,LOW);
	}
	std_msgs::String msg;
	std::stringstream ss;
  	ss << "on" ;
	msg.data = ss.str();
	status.publish(msg);
	return true;
}
int main(int argc,char **argv){
	
	if(wiringPiSetupGpio()<0){
		ROS_ERROR("Cannot setup wiringPi");
	} ;
	ros::init(argc,argv,"led1_server");
	ros::NodeHandle n;
	status = n.advertise<std_msgs::String>("led1_mode", 10);
	ros::ServiceServer service = n.advertiseService("led1_mode",callback);
	ROS_INFO("Ready to receive from client");
	ros::spin();
	return 0;
}

#include "ros/ros.h"
#include "led0/mode.h"
#include <wiringPi.h>
#include "std_msgs/String.h"
#include <sstream>
#include <iostream>

#define	LED	26

char * name="led0";
char * node_name="led0_server";
char * service_name="led0_mode";
char * topic_name="led0_mode";

ros::Publisher status;

bool callback(led0::mode::Request & req, led0::mode::Response & res){
	if(req.status){
		ROS_INFO("[%s] on",name);
		digitalWrite(LED,HIGH);//delay(500);digitalWrite(LED,LOW);
	}else{
		ROS_INFO("[%s] off",name);
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
	//INIT
	if(wiringPiSetupGpio()<0){
		ROS_ERROR("[%s] Cannot setup wiringPi",name);
	} ;
	ros::init(argc,argv,node_name);
	ros::NodeHandle n;

	//TOPIC
	status = n.advertise<std_msgs::String>(topic_name, 10);

	//DEFINITION
	ros::ServiceServer service = n.advertiseService(service_name,callback);
	ROS_INFO("[%s],Ready to receive from client",name);
	ros::spin();
	return 0;
}

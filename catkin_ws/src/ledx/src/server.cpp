#include "ros/ros.h"
#include "ledx/mode.h"
#include <wiringPi.h>
#include "std_msgs/String.h"
#include <sstream>
#include <iostream>


char * name="ledx";
char * node_name="ledx_server";
char * service_name="ledx_mode";
char * topic_name="ledx_mode";

ros::Publisher status;

bool callback(ledx::mode::Request & req, ledx::mode::Response & res){
	if(!req.id) return false;
	int port = req.id;
	//char * value=req.status;
	if(req.status){
		ROS_INFO("[%s] [%i] on",name,port);
		digitalWrite(port,HIGH);//delay(500);digitalWrite(LED,LOW);
	}else{
		ROS_INFO("[%s] [%i] off",name,port);
		digitalWrite(port,LOW);
	}
	std_msgs::String msg;
	std::stringstream ss;
  	ss << port << req.status?"true":"false" ;
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

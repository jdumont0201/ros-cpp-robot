#include "ros/ros.h"
#include "n_led/led_on.h"
#include <wiringPi.h>
#include "std_msgs/String.h"
#include <sstream>
#define	LED	25

ros::Publisher status;

bool callback(n_led::led_on::Request & req, n_led::led_on::Response & res){
	ROS_INFO("led_on: called");
	digitalWrite(LED,HIGH);
	std_msgs::String msg;
	std::stringstream ss;
  	ss << "on" ;
	msg.data = ss.str();
	status.publish(msg);
	return true;
}
int main(int argc,char **argv){
	wiringPiSetupSys() ;
	ros::init(argc,argv,"n_led_client");
	ros::NodeHandle n;
	status = n.advertise<std_msgs::String>("led0", 10);
	ros::ServiceServer service = n.advertiseService("n_led",callback);
	ROS_INFO("Ready to receive from client");
	ros::spin();
	return 0;
}

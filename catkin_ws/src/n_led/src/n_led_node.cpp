#include "ros/ros.h"
#include "n_led/led_on.h"

bool callback(n_led::led_on::Request & req, n_led::led_on::Response & res){
	ROS_INFO("called");
return true;
}
int main(int argc,char **argv){

ros::init(argc,argv,"n_led_client");
ros::NodeHandle n;
ros::ServiceServer service = n.advertiseService("n_led",callback);
ROS_INFO("Ready to receive from client");
ros::spin();
return 0;
}

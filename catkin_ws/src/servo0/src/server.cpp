#include "ros/ros.h"
#include <servo0/angleAction.h>
#include <wiringPi.h>
#include "std_msgs/String.h"
#include <sstream>
#include <actionlib/server/simple_action_server.h>
#define	CTRLPIN	19

char * action_name="angle";
char * server_name="servo0_server";
char * topic_name="servo_angle";

ros::Publisher status;

void execute(const servo0::angleGoalConstPtr& goal,actionlib::SimpleActionServer<servo0::angleAction> * as ){
	ROS_INFO("servo0::exec");
//	digitalWrite(CTRLPIN,HIGH);
	std_msgs::String msg;
	std::stringstream ss;  	
	ss << "exec"<< goal->target_angle ;
	msg.data = ss.str();
	status.publish(msg);
	as->setSucceeded();
}
int main(int argc,char **argv){
	//INIT
	wiringPiSetupSys() ;
	ros::init(argc,argv,server_name);
	ros::NodeHandle n;

	//TOPIC
	status = n.advertise<std_msgs::String>(topic_name, 10);

	//DEFINITION
	actionlib::SimpleActionServer<servo0::angleAction> server(n,action_name,boost::bind(&execute,_1,&server),false);
	server.start();
	
	ROS_INFO("Ready to receive from client");
	ros::spin();
	return 0;
}

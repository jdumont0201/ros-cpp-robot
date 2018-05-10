#include "ros/ros.h"
#include <servo0/angleAction.h>
#include <wiringPi.h>
#include "std_msgs/String.h"
#include <sstream>
#include <actionlib/server/simple_action_server.h>
#define	CTRLPIN	19

ros::Publisher status;

void execute(const servo0::angleGoalConstPtr& goal,actionlib::SimpleActionServer<servo0::angleAction> * as ){
	ROS_INFO("servo0::exec");
//	digitalWrite(CTRLPIN,HIGH);
	std_msgs::String msg;
	std::stringstream ss;  	ss << "exec" ;
	msg.data = ss.str();
	status.publish(msg);
	as->setSucceeded();
}
int main(int argc,char **argv){
	wiringPiSetupSys() ;
	ros::init(argc,argv,"servo0_server");
	ros::NodeHandle n;

	status = n.advertise<std_msgs::String>("servo0_angle", 10);

	actionlib::SimpleActionServer<servo0::angleAction> server(n,"angle",boost::bind(&execute,_1,&server),false);
	server.start();
	
	ROS_INFO("Ready to receive from client");
	ros::spin();
	return 0;
}

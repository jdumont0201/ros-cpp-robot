#include "ros/ros.h"
#include "servo0/angleAction.h"
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>

char * node_name="servo0_client";
char * action_name="angle";

int main(int argc,char **argv){
	//INIT
	ros::init(argc,argv,node_name);
	ros::NodeHandle n;
	actionlib::SimpleActionClient<servo0::angleAction> client(action_name,true);

	client.waitForServer();

	servo0::angleGoal goal;
	goal.target_angle=20.;
	client.sendGoal(goal);

	bool finished = client.waitForResult(ros::Duration(30.0));
	if(finished){
		actionlib::SimpleClientGoalState state=client.getState();
		ROS_INFO("Action finished");
	}else{
		ROS_INFO("Action timed out");
	}
	return 0;
}

#include "ros/ros.h"
#include "led1/mode.h"
#include <string>
#include <iostream>
int main(int argc,char **argv){
	//INIT
	char * name="led1_client";
	ros::init(argc,argv,name);
	ros::NodeHandle n("~");

	//PARAMS
	if(!n.hasParam("mode")){
		ROS_ERROR("[%s] Please set mode param on or off",name);
		return 1;
	}
	std::string mode;
	n.getParam("mode",mode);
	ROS_INFO("[%s] Param mode=[%s]",name,mode.c_str());

	//DEFINITION
	char * service_name="/led1_mode";
	ros::ServiceClient client = n.serviceClient<led1::mode>(service_name);
	ros::service::waitForService("/led1_mode");
//	ros::Rate loop_rate(10);

//	while (ros::ok()){

		//CALL ARGS
		led1::mode srv;
		if(mode=="on"){
			ROS_INFO("[%s] led ON",name);
			srv.request.status=true;
		}else if(mode=="off"){
			ROS_INFO("[%s] led OFF",name);
			srv.request.status=false;
		}else{
			ROS_ERROR("[%s] Unknown mode",name);
			return 1;
		}

		//CALL
		if(client.call(srv)){
			ROS_INFO("[%s] Call OK [%s]  [%s]",name,srv.request.status,srv.response.res);
			return 0;
		}else{
			ROS_ERROR("[%s] failed to call",name);
			return 1;
		};
//		ros::spinOnce();
//		loop_rate.sleep();
//	}
//	return 0;
}

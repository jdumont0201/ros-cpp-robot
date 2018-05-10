#include "ros/ros.h"
#include "ledx/mode.h"
#include <string>
#include <iostream>

char * name="ledx_client";
char * service_name="/ledx_mode";

int main(int argc,char **argv){
	//INIT
	ros::init(argc,argv,name);
	ros::NodeHandle n("~");

	//PARAMS
	if(!n.hasParam("mode")){
		ROS_ERROR("[%s] Please set mode param on or off",name);
		return 1;
	}
	if(!n.hasParam("id")){
		ROS_ERROR("[%s] Please set the pin",name);
		return 1;
	}
	std::string mode;
	n.getParam("mode",mode);
	ROS_INFO("[%s] Param mode=[%s]",name,mode.c_str());
	int id;
	n.getParam("id",id);
	ROS_INFO("[%s] Param id=[%i]",name,id);
	
	//DEFINITION
	ros::ServiceClient client = n.serviceClient<ledx::mode>(service_name);
	ros::service::waitForService(service_name);
//	ros::Rate loop_rate(10);

//	while (ros::ok()){

		//CALL ARGS
		ledx::mode srv;
		if(mode=="on"){
			ROS_INFO("[%s] led ON",name);
			srv.request.status=true;
			srv.request.id=id;
		}else if(mode=="off"){
			ROS_INFO("[%s] led OFF",name);
			srv.request.status=false;
			srv.request.id=id;
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
		ros::spinOnce();
//		loop_rate.sleep();
//	}
//	return 0;
}

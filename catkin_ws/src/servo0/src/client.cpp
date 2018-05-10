#include "ros/ros.h"
#include "led1/mode.h"

int main(int argc,char **argv){

	ros::init(argc,argv,"led1_client");
	ros::NodeHandle n;
	ros::ServiceClient client = n.serviceClient<led1::mode>("led1_mode");
	ros::Rate loop_rate(10);

	while (ros::ok()){
		led1::mode srv;
		srv.request.status=true;
		if(client.call(srv)){
			ROS_INFO("led1_on_client: call ok [%s] [%s]",srv.request.status,srv.response.res);
		}else{
			ROS_ERROR("failed to call");
			return 1;
		};
		ros::spinOnce();
		loop_rate.sleep();
	}
	return 0;
}

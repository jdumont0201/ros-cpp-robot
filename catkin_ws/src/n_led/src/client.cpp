#include "ros/ros.h"
#include "n_led/led_on.h"

int main(int argc,char **argv){

ros::init(argc,argv,"n_led_client");
ros::NodeHandle n;
ros::ServiceClient client = n.serviceClient<n_led::led_on>("n_led");
ros::Rate loop_rate(10);
while (ros::ok()){
	n_led::led_on srv;
	srv.request.status=true;
	if(client.call(srv)){
		ROS_INFO("n_led_on_client: call ok [%s] [%s]",srv.request.status,srv.response.res);
	}else{
		ROS_ERROR("failed to call");
return 1;
	}	;
	ros::spinOnce();
loop_rate.sleep();


}


return 0;
}

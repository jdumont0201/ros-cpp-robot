#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/Vector3.h"
#include "sensor_msgs/NavSatFix.h"
#include "sensor_msgs/NavSatStatus.h"
#include "std_msgs/Header.h"
#include <sstream>
#include <libgpsmm.h>

char * node_name="gps_pub_node";
char * topic_name="gps";


int main(int argc, char **argv){
  ROS_INFO("[%s] init",node_name);
  //INIT
  ros::init(argc, argv, node_name);
  ros::NodeHandle n;
 
  ros::Publisher pub = n.advertise<sensor_msgs::NavSatFix>("gps", 1000);
//  ros::Publisher pub = n.advertise<geometry_msgs::Vector3>("gps", 1000);

  ros::Rate loop_rate(5);

    //INIT CALIB
   gpsmm gps_rec("localhost", DEFAULT_GPSD_PORT);
 if (gps_rec.stream(WATCH_ENABLE | WATCH_JSON) == NULL) {
    std::cerr << "No GPSD running.\n";
    return 1;
}


	std_msgs::Header header;
        	ros::Time stamp=ros::Time::now();
	        header.stamp=stamp;

        sensor_msgs::NavSatStatus status;
        	status.service=sensor_msgs::NavSatStatus::SERVICE_GPS;
	        status.status=-1;// sensor_msgs::NavSatStatus::STATUS_NO_FIX;// not ready

        sensor_msgs::NavSatFix f;
        	f.header=header;
	        f.status=status;
	pub.publish(f);







ROS_INFO("[%s] init ok, now run...");

  while (ros::ok())  {

struct gps_data_t *gpsd_data;

    if (!gps_rec.waiting(1000000)) continue;

    if ((gpsd_data = gps_rec.read()) == NULL) {
      std::cerr << "GPSD read error.\n";
      return 1;
    } else {
      while (((gpsd_data = gps_rec.read()) == NULL) ||
             (gpsd_data->fix.mode < MODE_2D)) {
        // Do nothing until fix
      }
      timestamp_t ts   = gpsd_data->fix.time;
      double latitude  = gpsd_data->fix.latitude;
      double longitude = gpsd_data->fix.longitude;
	double altitude = gpsd_data->fix.altitude;

      // convert GPSD's timestamp_t into time_t
      time_t seconds;
      seconds = (time_t)ts;
      auto tm = *std::localtime(&seconds);

      std::ostringstream oss;
      oss << std::put_time(&tm, "%d-%m-%Y %H:%M:%S");
      auto time_str = oss.str();

	//MSG
	std_msgs::Header header;
		ros::Time stamp=ros::Time::now();
		header.stamp=stamp;

	sensor_msgs::NavSatStatus status;
		status.service=sensor_msgs::NavSatStatus::SERVICE_GPS; 
                status.status= 0;//sensor_msgs::NavSatStatus::STATUS_FIX;//  ready


	sensor_msgs::NavSatFix f;
	        f.latitude=     latitude;
        	f.longitude=     longitude;
f.altitude=altitude;
        f.header=header;
	f.status=status;
//        ROS_INFO("[%s] %f %f",latitude,longitude);
        pub.publish(f);

}
    ros::spinOnce();
    loop_rate.sleep();
  }


  return 0;
}

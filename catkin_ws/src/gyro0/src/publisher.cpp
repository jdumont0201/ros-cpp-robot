#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/Vector3.h"
#include "geometry_msgs/Accel.h"
#include <sstream>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <time.h>
#include <sys/time.h>
#include <unistd.h>
#include "LSM9DS1_Types.h"
#include "LSM9DS1.h"

char * node_name="gyro0_node";
//char * topic_name="gyro";
int rate_val=20;

LSM9DS1 imu(IMU_MODE_I2C, 0x6b, 0x1e);

int main(int argc, char **argv){
  //INIT
  ros::init(argc, argv, node_name);
  ros::NodeHandle n;

  ros::Publisher pub_accel = n.advertise<geometry_msgs::Accel>("accel",1000);
  ros::Publisher pub_mag = n.advertise<geometry_msgs::Vector3>("mag", 1000);

  ros::Rate rate(rate_val);
	ROS_INFO("[%s] init",node_name);
    //INIT CALIB
    imu.begin();
    if (!imu.begin()) {
        fprintf(stderr, "gyro0_node Failed to communicate with LSM9DS1.\n");
        exit(EXIT_FAILURE);
    }
    imu.calibrate(true);
	imu.calibrateMag(true);
	ROS_INFO("[%s] init ok, now run...",node_name);


  while (ros::ok())  {
        while (!imu.gyroAvailable()) ;
        imu.readGyro();
        while(!imu.accelAvailable()) ;
        imu.readAccel();
        while(!imu.magAvailable()) ;
        imu.readMag();

	geometry_msgs::Accel a;
	a.angular.x=	imu.calcGyro(imu.gx);
	a.angular.y=	imu.calcGyro(imu.gy);
	a.angular.z=	imu.calcGyro(imu.gz);
       	a.linear.x=imu.calcAccel(imu.ax);
      	a.linear.y=imu.calcAccel(imu.ay);
	a.linear.z=  imu.calcAccel(imu.az);
        pub_accel.publish(a); 

	geometry_msgs::Vector3 mag_val;
        mag_val.x=        imu.calcMag(imu.mx);
	mag_val.y=                imu.calcMag(imu.my);
        mag_val.z=      imu.calcMag(imu.mz);
        pub_mag.publish(mag_val); 
	
    ros::spinOnce();
    rate.sleep();
  }


  return 0;
}

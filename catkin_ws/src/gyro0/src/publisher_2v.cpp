#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/Vector3.h"
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
char * topic_name="gyro";
int rate_val=20;

LSM9DS1 imu(IMU_MODE_I2C, 0x6b, 0x1e);

int main(int argc, char **argv){
  //INIT
  ros::init(argc, argv, node_name);
  ros::NodeHandle n;

  
  ros::Publisher pub_gyro = n.advertise<geometry_msgs::Vector3>("gyro", 1000);
  ros::Publisher pub_accel = n.advertise<geometry_msgs::Vector3>("accel",1000);
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

	geometry_msgs::Vector3 gyro_val;
	gyro_val.x=	imu.calcGyro(imu.gx);
	gyro_val.y=	imu.calcGyro(imu.gy);
	gyro_val.z=	imu.calcGyro(imu.gz);
	pub_gyro.publish(gyro_val);

	geometry_msgs::Vector3 accel_val; 
       	accel_val.x=imu.calcAccel(imu.ax);
      	accel_val.y=imu.calcAccel(imu.ay);
	accel_val.z=  imu.calcAccel(imu.az);
        pub_accel.publish(accel_val); 

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

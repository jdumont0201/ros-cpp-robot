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
#include <ctime>
#include <fstream>
#include <iostream>
#include <raspicam/raspicam_cv.h>

#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
using namespace std;

using namespace cv;

char * node_name="cam0_node";
char * topic_name="cam0";


int main(int argc, char **argv){
  //INIT
  ros::init(argc, argv, node_name);
  ros::NodeHandle n;

  
  ros::Publisher pub = n.advertise<geometry_msgs::Vector3>("cam0", 1000);

  ros::Rate loop_rate(5);
  ROS_INFO("[%s] init",node_name);
	raspicam::RaspiCam_Cv Camera; //Camera object
	cv::Mat image;
	auto form=CV_8UC1;
	auto format=cv::CAP_PROP_FORMAT;
	Camera.set(format, form );

        //Open camera 
        cout<<"Opening Camera..."<<endl;
        if ( !Camera.open()) {cerr<<"Error opening camera"<<endl;return -1;}
        //wait a while until camera stabilizes
        cout<<"Sleeping for 3 secs"<<endl;
        sleep(3);

    //INIT CALIB

  while (ros::ok())  {

	//capture
	ROS_INFO("[%s] capture",node_name);
	Camera.grab();
	Camera.retrieve(image);
	Camera.release();

	cv::imwrite("rasp.jpg",image);
	//allocate memory
//	unsigned char *data=new unsigned char[  Camera.getImageTypeSize ( raspicam::RASPICAM_FORMAT_RGB )];
	//extract the image in rgb format
//	Camera.retrieve ( data,raspicam::RASPICAM_FORMAT_RGB );//get camera image

	/*geometry_msgs::Vector3 gyro_val;
        gyro_val.x=     imu.calcGyro(imu.gx);
        gyro_val.y=     imu.calcGyro(imu.gy);
        gyro_val.z=     imu.calcGyro(imu.gz);
        pub_gyro.publish(gyro_val);*/





	//save
/*	std::ofstream outFile ( "raspicam_image.ppm",std::ios::binary );
	outFile<<"P6\n"<<Camera.getWidth() <<" "<<Camera.getHeight() <<" 255\n";
	outFile.write ( ( char* ) data, Camera.getImageTypeSize ( raspicam::RASPICAM_FORMAT_RGB ) );
	cout<<"Image saved at raspicam_image.ppm"<<endl;

	delete data;
*/
	ros::spinOnce();
	loop_rate.sleep();

}



	return 0;
}


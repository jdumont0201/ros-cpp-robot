
#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <geometry_msgs/Vector3.h>
#include "cv_bridge0/tennisball.h"
#include <std_msgs/Header.h>
#include "cv_bridge0/tennisballs.h"
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include "opencv2/objdetect.hpp"

char * node_name ="detector_node";

using namespace std;
using namespace cv;
void detectAndDisplay( Mat frame );
String face_cascade_name, eyes_cascade_name,tennisball_cascade_name;
CascadeClassifier face_cascade;
CascadeClassifier eyes_cascade;
CascadeClassifier tennisball_cascade;

ros::Publisher pub_balls ;


class ImageConverter{
  ros::NodeHandle nh_;
  image_transport::ImageTransport it_;
  image_transport::Subscriber image_sub_;
  image_transport::Publisher image_pub_;

public:
  ImageConverter()    : it_(nh_)  {
    ROS_INFO("[%s] init",node_name);
    image_sub_ = it_.subscribe("/usb_cam/image_raw", 1,      &ImageConverter::imageCb, this);
    image_pub_ = it_.advertise("/image_converter/output_video", 1);

    face_cascade_name ="/home/jbmdumont/opencv/data/haarcascades/haarcascade_frontalface_alt.xml";
    eyes_cascade_name ="/home/jbmdumont/opencv/data/haarcascades/haarcascade_eye_tree_eyeglasses.xml";
    tennisball_cascade_name ="/home/jbmdumont/cascades/tennisball.xml";

    //    VideoCapture capture;
    Mat frame;

    //Load the cascades
    if( !face_cascade.load( face_cascade_name ) ){ printf("--(!)Error loading face cascade\n");  };
    if( !eyes_cascade.load( eyes_cascade_name ) ){ printf("--(!)Error loading eyes cascade\n");};
    if( !tennisball_cascade.load( tennisball_cascade_name ) ){ printf("--(!)Error loading tennisball cascade\n");};
	ROS_INFO("[%s] init ok",node_name);


  }
  ~ImageConverter()  {
  }

  void imageCb(const sensor_msgs::ImageConstPtr& msg)  {
    cv_bridge::CvImagePtr cv_ptr;
    try {
      cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
 detectAndDisplay( cv_ptr->image );

    }    catch (cv_bridge::Exception& e)    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }

    // Process image: draw an example circle on the video stream
//    if (cv_ptr->image.rows > 60 && cv_ptr->image.cols > 60){
  //    cv::circle(cv_ptr->image, cv::Point(50, 50), 10, CV_RGB(255,0,0));
   // }
    image_pub_.publish(cv_ptr->toImageMsg());
  }
};
double getYellowFactor(cv::Mat bgrMat){
    ROS_INFO("detect yellow");
    cv::Mat hsv;
    std::vector<cv::Mat> hsvChannels;

    cv::cvtColor(bgrMat, hsv, CV_BGR2HSV);
    cv::split(hsv, hsvChannels);

    cv::Mat H = hsvChannels[0];
    cv::Mat S = hsvChannels[1];
    cv::Mat V = hsvChannels[2];

    cv::Mat yellow = (H < 75) | (H > 38); //-- this is a rough segmentation, can be tweaked for optimized results
    double sumYellowPixels  = cv::sum(yellow)[0] / 255;
    return sumYellowPixels;
}
void detectAndDisplay( Mat frame ){
	ROS_INFO("detect");
    Mat frame_gray;
    cvtColor( frame, frame_gray, COLOR_BGR2GRAY );
    equalizeHist( frame_gray, frame_gray );

    //BALL
    std::vector<Rect> tennisballs;
    tennisball_cascade.detectMultiScale( frame, tennisballs, 1.1, 2, 0|CASCADE_SCALE_IMAGE, Size(10, 10) );
    int tb_n=tennisballs.size();

    //publish
    ROS_INFO("publish");
    cv_bridge0::tennisballs msg;
    std_msgs::Header header;
        ros::Time stamp=ros::Time::now();
        header.stamp=stamp;

    msg.header=header;
	double maxyellow=0;
    for ( size_t i = 0; i < tb_n; i++ )    {
	ROS_INFO("bi %i/%i",i,tb_n );
	Rect &  T=tennisballs[i];
        Mat tennisballROI = frame_gray(T );
	cv::Scalar yellow=cv::mean(tennisballROI);
        cv_bridge0::tennisball msgb;	
	
	msgb.x=tennisballs[i].x;
	msgb.y=tennisballs[i].y;
	msgb.yellow=yellow[0];
	if(yellow[0]>maxyellow) maxyellow=yellow[0];
	msg.balls.push_back(msgb);
//}
  //  for ( size_t i = 0; i < tb_n; i++ )    {
//	Rect &  T=tennisballs[i];

        Point center(T.x + T.width/2, T.y + T.height/2 );
	int color=(int)yellow[0];///maxyellow
        ellipse( frame, center, Size(T.width/2, T.height/2 ), 0, 0, 360, Scalar( color,color,color ), 4, 8, 0 );
    }


ROS_INFO("pub");      
    pub_balls.publish(msg);

    //pub_balls.publish(array);
    //FACES
    std::vector<Rect> faces;
    face_cascade.detectMultiScale( frame_gray, faces, 1.1, 2, 0|CASCADE_SCALE_IMAGE, Size(60, 60) );
    for ( size_t i = 0; i < faces.size(); i++ )    {
        Point center( faces[i].x + faces[i].width/2, faces[i].y + faces[i].height/2 );
        ellipse( frame, center, Size( faces[i].width/2, faces[i].height/2 ), 0, 0, 360, Scalar( 255, 0, 255 ), 4, 8, 0 );
        Mat faceROI = frame_gray( faces[i] );
        std::vector<Rect> eyes;
        // EYES IN FACE
        eyes_cascade.detectMultiScale( faceROI, eyes, 1.1, 2, 0 |CASCADE_SCALE_IMAGE, Size(30, 30) );
        for ( size_t j = 0; j < eyes.size(); j++ )        {
            Point eye_center( faces[i].x + eyes[j].x + eyes[j].width/2, faces[i].y + eyes[j].y + eyes[j].height/2 );
            int radius = cvRound( (eyes[j].width + eyes[j].height)*0.25 );
            circle( frame, eye_center, radius, Scalar( 255, 0, 0 ), 4, 8, 0 );
        }
    }
}

int main(int argc, char** argv){
  ros::init(argc, argv, node_name);
ros::NodeHandle n;

 pub_balls = n.advertise<cv_bridge0::tennisballs>("detector/tennisballs",1000);

  ImageConverter ic;
  ros::spin();
  return 0;
}


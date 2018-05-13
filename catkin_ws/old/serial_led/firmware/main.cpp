#include <ros.h>
#include <std_msgs/String.h>

#if defined(ARDUINO)
#include <Arduino.h>
#endif

ros::NodeHandle n;
std_msgs::String msg;
ros::Publisher chatter("chatter",&msg);

char hell[13]="hello, world";
void setup(){
n.initNode();
n.advertise(chatter);
}
void loop(){
msg.data=hell;
chatter.publish(&msg);
n.spinOnce();
delay(1000);
}

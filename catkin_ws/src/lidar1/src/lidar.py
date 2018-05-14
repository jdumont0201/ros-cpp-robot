#!/usr/bin/env python 
import rospy
from std_msgs.msg import Float32
from sensor_msgs import LaserScan
import serial
import time
import RPi.GPIO as GPIO


ser = serial.Serial('/dev/ttyUSB0',115200,timeout = 1)
node_name="lidar0_node"
topic_name="lidar0"


def init():
	#ser.write(0x42)
	ser.write(bytes(b'B'))
	#ser.write(0x57)
	ser.write(bytes(b'W'))
	#ser.write(0x02)
	ser.write(bytes(2))
	#ser.write(0x00)
	ser.write(bytes(0))
	#ser.write(0x00)
	ser.write(bytes(0))
	#ser.write(0x00)
	ser.write(bytes(0))
	#ser.write(0x01)
	ser.write(bytes(1))
	#ser.write(0x06)
	ser.write(bytes(6))

def read():
#    while(ser.in_waiting >= 9):
	Dist_Total=-1
        if((b'Y' == ser.read()) and ( b'Y' == ser.read())):
            Dist_L = ser.read()
            Dist_H = ser.read()
            Dist_Total = (ord(Dist_H) * 256) + (ord(Dist_L))
            for i in range (0,5):
                ser.read()
	return Dist_Total
	

def talker():
    pub = rospy.Publisher(topic_name, Float32, queue_size=10)
    rospy.init_node(node_name, anonymous=True)
    rate = rospy.Rate(10) 
    while not rospy.is_shutdown():
	dist=read()
	scan = LaserScan()
	scan.header.stamp = current_time
	scan.header.frame_id = 'laser_frame'
	scan.angle_min = 0.
	scan.angle_max = 0.
	scan.angle_increment = 0
	scan.time_increment = 0
	scan.range_min = 30
	scan.range_max = 1200

	scan.ranges = []
	scan.intensities = []
	scan.ranges.append(dist)
        pub.publish(scan)
        rate.sleep()

if __name__ == '__main__':
    try:
	init()
	rospy.loginfo("[%s] init ok, now run...",node_name)
        talker()
    except rospy.ROSInterruptException:
        pass

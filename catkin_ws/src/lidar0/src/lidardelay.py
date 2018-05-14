#!/usr/bin/env python 
import rospy
from std_msgs.msg import Float32
from sensor_msgs.msg import LaserScan
import serial
import time
import RPi.GPIO as GPIO

ser = serial.Serial('/dev/ttyUSB0',115200,timeout = 1)
node_name="lidar0_node"
topic_name="lidar0"

last
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

def read(pub):
    if(ser.in_waiting >= 9):
	a=rospy.Time.now()
#	print("read")
	Dist_Total=-1
        if((b'Y' == ser.read()) and ( b'Y' == ser.read())):
            Dist_L = ser.read()
            Dist_H = ser.read()
	    Strength_L=ser.read()
	    Strength_H=ser.read()
	    Strength=ord(Strength_L)+256*ord(Strength_H)
	    Mode = ser.read()
	    tmp = ser.read()
	    CheckSum=ser.read()	
            Dist_Total = (ord(Dist_H) * 256) + (ord(Dist_L))
            scan=LaserScan()
#	    print(rospy.Time.now(),Dist_Total)
            
	    scan.header.stamp =  a
	    scan.header.frame_id = 'laser_frame'
	    scan.angle_min = 0.
	    scan.angle_max = 0.
            scan.angle_increment = 0
            scan.time_increment = 0
            scan.range_min = 30.
            scan.range_max = 1200.
            scan.ranges = []
            scan.intensities = []
            scan.ranges.append(Dist_Total)
	    scan.intensities.append(Strength)
            pub.publish(scan)

def talker():
    pub = rospy.Publisher(topic_name, LaserScan, queue_size=1)
    rospy.init_node(node_name, anonymous=True)
    rate = rospy.Rate(100) 
    while not rospy.is_shutdown():
	scan=read(pub)
        rate.sleep()

if __name__ == '__main__':
    try:
	init()
	rospy.loginfo("[%s] init ok, now run...",node_name)
        talker()
    except rospy.ROSInterruptException:
        pass

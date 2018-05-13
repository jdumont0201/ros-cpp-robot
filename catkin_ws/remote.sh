#!/bin/sh
# test if
printf "start"
#source /opt/ros/lunar/setup.bash
#source /home/jbmdumont/catkin_ws/devel/setup.bash
export ROS_HOSTNAME="rpi"
#export ROS_MASTER_URI=http://192.168.1.95:11311/
export ROS_MASTER_URI=http://192.168.1.95:11311/
export ROS_IP=192.168.1.140

source /home/jbmdumont/catkin_ws/devel/setup.sh
exec "$@"

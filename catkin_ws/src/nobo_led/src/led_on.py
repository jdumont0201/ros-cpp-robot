#!/usr/bin/env python

import rospy

def handle_add_two_ints(req):
     print "Returning [%s + %s = %s]"%(req.a, req.b, (req.a + req.b))
     return 1

def server():
       rospy.init_node('led_on')
       s = rospy.Service('led_on', AddTwoInts, handle_add_two_ints)
       print "SRV led_on ready"
       rospy.spin()

if __name__ == "__main__":
	server()

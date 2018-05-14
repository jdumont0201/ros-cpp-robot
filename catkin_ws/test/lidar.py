import serial
import time
import RPi.GPIO as GPIO

ser = serial.Serial('/dev/ttyUSB0',115200,timeout = 1)

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

while(True):
#   print("test")
#    print("ser",ser.in_waiting)
    while(ser.in_waiting >= 9):
#	print("we")
	#print (ser.read())
        if((b'Y' == ser.read()) and ( b'Y' == ser.read())):
#            print("ok")
            Dist_L = ser.read()
            Dist_H = ser.read()
            Dist_Total = (ord(Dist_H) * 256) + (ord(Dist_L))
	    print("dist",Dist_Total)
            for i in range (0,5):
                ser.read()
	else:
		print("no")
	

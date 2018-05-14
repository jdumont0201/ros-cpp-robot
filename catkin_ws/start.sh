sudo chmod 777 /dev/gpiomem
sudo chmod 777 /dev/ic2-*
sudo chmod 777 /dev/ttyACM0
sudo gpsd /dev/ttyACM0  -F /var/run/gpsd.lock  -n

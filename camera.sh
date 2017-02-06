vi /home/pi/camera/camera.sh
#!/bin/bash

Y=$(date +"%Y")
M=$(date +"%m")
D=$(date +"%d")
DATE=$(date +"%Y-%m-%d_%H%M")
raspistill -w 1920 -h 1080 -o /home/pi/raspberry/camera/img/$DATE.jpg
sudo aws s3 mv /home/pi/raspberry/camera/img/$DATE.jpg s3://s3.shiolab.com/camera/sip/$Y/$M/$D/

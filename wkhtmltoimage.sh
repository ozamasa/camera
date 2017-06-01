#!/bin/bash
Y=$(date +"%Y")
M=$(date +"%m")
D=$(date +"%d")
DATE=$(date +"%Y-%m-%d_%H%M")
xvfb-run wkhtmltoimage --crop-h 540 --crop-w 740 --crop-x 30 --crop-y 52 http://live.shiolab.com /home/pi/raspberry/plot/$DATE.jpg
sudo aws s3 mv /home/pi/raspberry/plot/$DATE.jpg s3://s3.shiolab.com/sensor/shiolab/$Y/$M/$D/

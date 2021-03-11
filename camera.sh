#!/bin/bash
LANG=ja_JP.UTF-8
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
Y=$(date +"%Y")
M=$(date +"%m")
D=$(date +"%d")
DATE=$(date +"%Y-%m-%d_%H%M")
raspistill -w 1920 -h 1080 -o /home/pi/raspberry/camera/img/$DATE.jpg
aws s3 mv /home/pi/raspberry/camera/img/$DATE.jpg s3://s3.shiolab.com/camera/sip/$Y/$M/$D/

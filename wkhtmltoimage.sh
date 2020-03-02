#!/bin/bash
Y=$(date +"%Y")
M=$(date +"%m")
D=$(date +"%d")
DATE=$(date +"%Y-%m-%d_%H%M")
xvfb-run wkhtmltoimage --encoding utf8 --crop-h 502 --crop-w 552 --crop-x 27 --crop-y 302 http://www.jma.go.jp/jp/amedas/207.html?elementCode=2 /home/ozamasa/amedas/$DATE.jpg
aws s3 mv /home/ozamasa/amedas/$DATE.jpg s3://s3.shiolab.com/amedas/$Y/$M/$D/

#!/bin/bash
Y=$(date +"%Y")
M=$(date +"%m")
D=$(date +"%d")
H=$(date +"%H")
DATE=$(date +"%Y-%m-%d_%H%M")
wget "http://www.jma.go.jp/jp/amedas/imgs/temp/207/${Y}${M}${D}${H}00-00.png" -O /home/ozamasa/amedas/$DATE.jpg
aws s3 mv /home/ozamasa/amedas/$DATE.jpg s3://s3.shiolab.com/amedas/$Y/$M/$D/


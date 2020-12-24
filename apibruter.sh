#!/bin/bash

# 2020 Advent of Cyber Day 16 challenge (written in bash)

# A directory named 'day16' was created to move wget files from showing up in current directory (i.e: /home/<USERNAME>) to retrieve the required output.

# RECOMMEND to create the directory first before running the script

# declare inital api number of 1 and increment by 2 to reach 100
for number in $(seq 1 2 100);
do
	echo 'api number:' $number
	wget -q  http://<TARGET IP>:8000/api/$number
	mv $number ~/day16
	cat ~/day16/$number | grep { 
done

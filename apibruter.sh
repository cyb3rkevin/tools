#!/bin/bash

# 2020 Advent of Cyber Day 16 challenge (written in bash)

# declare inital api number of 1 and increment by 2 to 100 
for number in $(seq 1 2 100);
do
	echo 'api number:' $number
	wget -q  http://<TARGET IP>:8000/api/$number
	# produce numbered file in current directory
	cat $number | grep { 
	# removing file after it gives output
	rm $number
done

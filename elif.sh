#!/bin/bash

echo "enter name"
read name

if [ $name == "jaggu" ]
then
	echo "$name, number is 1"

elif [ $name == "niru" ]
then
	echo "$name, number is 2"

elif [ $name == "mohan" ]
then
	echo "$name, number is 3"

else
	echo "$name, number not assigned to you"

fi

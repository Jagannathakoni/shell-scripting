#!/bin/bash

#Define your function here

Hello () {
	echo "Hello World $1 $2 $3"
	return 10
}

#Invoke your function
Hello Jaggu and Niru

#Capture value returned by last command
ret=$?

echo "your role number is $ret"

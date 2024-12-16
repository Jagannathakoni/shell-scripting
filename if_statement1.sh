#!/bin/bash

echo "enter name"
read name
echo "enter marks"
read marks

if [ $marks is -ge 50 ]
then
	echo "$name, your are eligible"

else
	echo "$name, you are not eligible"
fi

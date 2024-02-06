#!/bin/bash

echo "Below is the menu"

echo -e "1)Searchword\n2)Checkname\n3)Find file\n4)Create links\n5)Edit file\n6)Exit\n"

echo "Select option from above menu"
read opt
	
case $opt in
	1) echo "enter word to search in files"
		read word
		grep -R | "$word"*>log-word
		if [ $? -eq 0 ];then
			echo "$word is found in below files"
			cat log-word; rm log-word
		else
			echo "$word is not found in my files"
		fi
		;;
	
	2)/home/ubuntu/shell-scripting/menu.sh
		;;

	3)echo "enter file name to find its path"
		read file
		find . -iname "$file">log-file
		if [ $? -eq 0 ];then
			echo "$file is found in below locations"
			cat log-file;rm log-file
		else
			echo "$file is not found anywhere"
		fi
		;;

	4)echo "enter file name to create link"
		read file
		if [ !-f $file ];then
			echo "$file does not exist. Please give correct filename"
			exit 1
		fi

		echo "enter link name"
		read link
		if [ -L $link ];then
			echo "$link already exists"
			exit 1
		fi
	     ln -s $file $link
	        ;;

	5)echo "enter file name to edit"
		read file
		if [ -f $file ];then
			vim $file
		else
			echo "$file does not exist"
			exit 1
		fi
		;;

	*)echo "you selected to exit from script"
		exit 0
		;;
	esac

#!/bin/bash

declare -x first second
read -p 'Enter the first string : ' first
read -p 'Enter the second string : ' second
if [ $first = $second ]  # another way of checking is by using [[ $first == $second ]] make sure that in string comparison variables should be wraped inside the ""
then
	echo "$first == $second"
else
	echo "$first != $second"
fi

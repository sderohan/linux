#!/bin/bash

# Program to count the number of set bits

declare -i num=$1 count=0

while [ $num -gt 0 ]
do
	if [ $(( num & 1 )) -eq 1 ]
	then
		(( count++ ))
	fi
	(( num >>= 1 ))
done

echo "Number of ones in the number $count"

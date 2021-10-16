#!/bin/bash

declare -i num

read -p 'Enter the number ' num

if [ $((num&1)) -eq 1 ]
then
	echo "$num is odd number."
else
	echo "$num is even number."
fi

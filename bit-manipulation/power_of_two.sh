#!/bin/bash

declare -i num=$1

if [ $(( num != 0 && num & num-1 )) -eq 0 ]
then
	echo "$num is power of two."
else
	echo "$num is not the power of two."
fi

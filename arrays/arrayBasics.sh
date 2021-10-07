#!/bin/bash

#This file contains the basic array operations mainly performed to understand the arrays

# Declare the array
declare -a arr=(1 2 3 4 5 6 7 8 9 10)

# Get the length of the array arr
length=${#arr[@]}

# Print the length of the array
echo $length

# Print the entire array
echo ${arr[@]}

# Iterate over the array arr
for (( i=0; i<$length; i++ ))
do
	echo -n ${arr[$i]} " "
done

# trying to add the other than array to the variable will fallback to the default value
#arr=9
#echo $arr

echo ""

printArray() {
	echo "Inside the printArray function"
	local arr=("$@")
	echo ${arr[@]}
}

printArray "${arr[@]}"

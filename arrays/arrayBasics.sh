#!/bin/bash

#This file contains the basic array operations mainly performed to understand the arrays

# Declare the array
declare -a arr=(1 2 3 4 5 6 7 8 9 10)

# Get the length of the array arr
length=${#arr[@]}

# Print the length of the array
echo $length

# Print the entire array
echo "Print the entire array without using the loop " ${arr[@]}

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
	# Below is the correct syntax to access the all array elements if we do $1 then we only get the first element in array
	local arr=("$@")
	echo ${arr[@]}
	echo "Print the array using the shorter version of the loop"
	for i in "${arr[@]}"
	do
		echo -n "$i "
	done
}

# While passing the array to the function expand and pass it to the array as below
printArray "${arr[@]}"

modifyArray() {
	echo "Inside the modifyArray function"
	local arr=("$@")
	arr[0]=99
	echo "${arr[@]}"
}

declare -a array=(1 2 3 4 5 6 7 8 9 10)
echo "Before calling modifyArray function " ${array[@]}
modifyArray "${array[@]}"
echo "After calling modifyArray function " ${array[@]}

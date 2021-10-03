#!/bin/bash

# Given an int n, return true if it is within 10 of 100 or 200. 

function nearHundred() {
	abs $1
	(( diff1=$1-100))
	(( diff2=$1-200))
	abs $diff1
	diff1=$?
	abs $diff2
	diff2=$?
	return $(( diff1 <= 10 || diff2 <= 10))		
}

# Helper function to calculate the absolute value
function abs() {
	declare -i n=$1
	if (( $1 < 0 ))
	then
		return $(( $1 * -1))
	fi
	return $1
}

function main() {
	nearHundred 93
	echo $?
	nearHundred 90
	echo $?
	nearHundred 89
	echo $?
	nearHundred 110
	echo $?
	nearHundred -101
	echo $?
	nearHundred -209
	echo $?
	nearHundred -50
	echo $?
}

main

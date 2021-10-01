#!/bin/bash

# Given 2 ints, a and b, return true if one if them is 10 or if their sum is 10.

function makes10() {
	result=$(($1==10 || $2==10 || $1+$2 == 10))
	if [ $result -eq 1 ]
	then
		return 1
	fi
	return 0
}

function main() {
	makes10 9 10
	echo $?
	makes10 9 9
	echo $?
	makes10 1 9
	echo $?
}

main

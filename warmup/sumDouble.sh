#!/bin/bash


# Given two int values, return their sum. 
# Unless the two values are the same, then return double their sum.

function doubleSum() {
	if [ $1 -eq $2 ]
	then
		return $(( 2 * ( $1 + $2 )))
	fi
	return $(( $1 + $2 ))
}

function main() {
	doubleSum 1 2
	echo $?
	doubleSum 3 2
	echo $?
}

main



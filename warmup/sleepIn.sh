#!/bin/bash
# The parameter weekday is true if it is a weekday, and the parameter vacation is true if we are on vacation. 
# We sleep in if it is not a weekday or we're on vacation. Return true if we sleep in.

function sleepIn() {
	return $(( $1 == 0 || $2 == 1))
}

function main() {
	sleepIn 0 1
	echo $?
	sleepIn 1 0
	echo $?
	sleepIn 0 1
	echo $?
	sleepIn 1 1 
	echo $?
}

main 

#!/bin/bash

: <<'END'
Given two non-negative int values, return true if they have the same last digit, such as with 27 and 57. Note that the % "mod" operator computes remainders, so 17 % 10 is 7.


lastDigit(7, 17) → true
lastDigit(6, 17) → false
lastDigit(3, 113) → true

END

lastDigit() {
	if (( $1 % 10 == $2 % 10 ))
	then
		return 1
	fi
	return 0
}

main() {
	lastDigit 7 17
	echo $?
	lastDigit 6 17
	echo $?
	lastDigit 3 113
	echo $?
	lastDigit 10 0
	echo $?
	lastDigit 114 113
	echo $?
}

main

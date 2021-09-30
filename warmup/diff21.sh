#!/bin/bash

: <<'END'
Given an int n, return the absolute difference between n and 21, 
except return double the absolute difference if n is over 21.
END

function diff21() {
	if [ $1 -le 21 ]
	then
		return $(( 21 - $1 ))
	else
		return $(( ($1 - 21) * 2))
	fi
}


function main() {
	diff21 19
	echo $?
	diff21 10
	echo $?
	diff21 21
	echo $?
}

main

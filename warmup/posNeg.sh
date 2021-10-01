#!/bin/bash

: <<'END'
Given 2 int values, return true if one is negative and one is positive. 
Except if the parameter "negative" is true, then return true only if both are negative.
END

function posNeg() {
	if (( $3 == 1 ))
	then
		return $(( ($1 < 0) && ($2 < 0) ))
	else
		return $(( ($1 < 0 && $2 > 0) || ($1 > 0 && $2 < 0) ))
	fi
}

function main() {
	posNeg 1 -1 0
	echo $?
	posNeg -1 1 0
	echo $?
	posNeg -4 -5 1
	echo $?
}

main

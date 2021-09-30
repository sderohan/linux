#!/bin/bash

: <<'END'
We have a loud talking parrot. The "hour" parameter is the current hour time in the range 0..23. 
We are in trouble if the parrot is talking and the hour is before 7 or after 20. 
Return true if we are in trouble.
END

function parrotTrouble() {
	return $(( $1 == 1  && (($2 < 7 || $2 > 20)) ))
}

function main() {
	parrotTrouble 1 6
	echo $?
	parrotTrouble 1 7
	echo $?
	parrotTrouble 0 6
	echo $?
}

main

#!/bin/bash

: <<'END_COMMENT'
 We have two monkeys, a and b, and the parameters aSmile and bSmile indicate if each is smiling. 
 We are in trouble if they are both smiling or if neither of them is smiling. 
 Return true if we are in trouble.
END_COMMENT

function monkeyTrouble() {
	return $(( ($1 == 1 && $2 == 1) || ($1 == 0 && $2 == 0) ))
}

function main () {
	monkeyTrouble 1 1
	echo $?
	monkeyTrouble 0 0
	echo $?
	monkeyTrouble 1 0
	echo $?
	monkeyTrouble 0 1
	echo $?
}

main "@"

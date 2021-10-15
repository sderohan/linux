#!/bin/bash

counter() {
	if(( $1 == 0 ))
	then
		return
	fi
	counter $(( $1 - 1 ))
	echo -n $1 " "
}

main() {
	if [ $# -le 0 ]
	then
		echo "Enter the input number as a script arg"
		exit
	fi
	counter $1
	echo
}

main $1

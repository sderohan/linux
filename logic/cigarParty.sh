#!/bin/bash

: <<'END'
When squirrels get together for a party, they like to have cigars. 
A squirrel party is successful when the number of cigars is between 40 and 60, inclusive. 
Unless it is the weekend, in which case there is no upper bound on the number of cigars. 
Return true if the party with the given values is successful, or false otherwise.
END

function cigarParty() {
	# $1 parameter cigars, $2 parameter isWeekend (represented as 0 for fase and 1 for true)
	if (( $2 == 0 ))
	then
		return $(( $1 >= 40 && $1 <= 60 ))
	fi
	return $(($1 >= 40))
}

function main() {
	cigarParty 30 0
	echo $?
	cigarParty 50 0
	echo $?
	cigarParty 70 1
	echo $?
	cigarParty 30 1
	echo $?
	cigarParty 40 0
	echo $?
	cigarParty 40 1
	echo $?
}

main

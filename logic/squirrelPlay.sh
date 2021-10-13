#!/bin/bash

:<<'END'
The squirrels in Palo Alto spend most of the day playing. In particular, they play if the temperature is between 60 and 90 (inclusive). 
Unless it is summer, then the upper limit is 100 instead of 90. Given an int temperature and a boolean isSummer, 
return true if the squirrels play and false otherwise.

squirrelPlay(70, false) → true
squirrelPlay(95, false) → false
squirrelPlay(95, true) → true

END

squirrelPlay() {
	if(( $2 == 1 ))
	then
		return $(( $1 >= 60 && $1 <= 100 ))
	fi
	return $(( $1 >= 60 && $1 <= 90 ))
}

main() {
	squirrelPlay 70 0
	echo $?

	squirrelPlay 95 0
	echo $?

	squirrelPlay 95 1
	echo $?
}

main

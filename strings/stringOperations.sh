#!/bin/bash

: <<'END'
This file contains the basic string manipulation operations, performed to understand the same
https://www.thegeekstuff.com/2010/07/bash-string-manipulation/
END

main() {

	# Declare the string variable
	declare -x string="hello world"

	# Print the string variable
	echo $string ${string}

	# Print the length of the string
	echo "String length --> " ${#string}

	# Print the substring from the given index
	echo "Substring from index 3 " ${string:3}

	# Print the substring of the specified length
	echo "Substring of length 4 " ${string:3:4}
}


main

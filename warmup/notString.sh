#!/bin/bash

: <<'END'
Given a string, return a new string where "not " has been added to the front. However, if the string already begins with "not", return the string unchanged. 

notString("candy") → "not candy"
notString("x") → "not x"
notString("not bad") → "not bad"
END

function notString() {
	if  [[ $1 != not* ]]
	then
		echo "not $1"
	else
		echo "$1"
	fi
}

function main() {
	echo "not bad -----> " $(notString "not bad")
	echo "candy   -----> " $(notString "candy")
	echo "test    -----> " $(notString "test")
	echo "notspaces" $(notString "notspaces")
}


main

#!/bin/bash

# Implementation of the palindrome string checker in bash script

palindrome() {
  declare -x str=$1
  local length=${#str}
  for(( i=0,j=$length-1; i<j; i++,j--))
  do
    if [ ${str:$i:1} != ${str:$j:1} ]
    then
      echo "not palindrome"
      return
    fi
  done
  echo "palindrome"
}

declare -x string
read -p 'Enter the string ' string

echo "String ${string} is $(palindrome $string)"

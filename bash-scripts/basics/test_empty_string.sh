#!/bin/bash

read -p 'Enter the string ' str
if [[ -z $str ]]
then
  echo "Given string is empty"
else
  echo $str
fi

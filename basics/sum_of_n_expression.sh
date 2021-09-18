#!/bin/bash

declare -i num
read -p "Enter the value for the N " num
result=$(( $num * ($num+1) / 2))
echo $result

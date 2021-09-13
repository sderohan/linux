#!/bin/bash

read -p "Enter the value for the N " num
result=$(($num+1))
result=$(($result * $num))
result=$(($result / 2))
echo $result

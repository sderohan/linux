#!/bin/bash

read -p 'Enter the nth number : ' num
a=0
b=1
for ((i=0; i<num; i++))
do
    echo $a
    temp=$a
    a=$b
    b=$(($a+$temp))
done
#!/bin/bash

:<<'END'
This file contains the different ways to read the file in the bash script
END

echo "Reading file using cat command"
file_content=`cat notes.txt`
echo $file_content

echo -e "\nReading file using \$(<filename)"
file_content=$(<notes.txt)
echo $file_content

echo -e "\nReading file content using script"
file_name='notes.txt'
while read line   # to read the file omitting the backslash use [ while read -r line ]
do
	echo $line
done < $file_name # here we can write the filename like [ done <notes.txt ]

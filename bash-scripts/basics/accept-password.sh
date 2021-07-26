#!/bin/bash

# Reads the username and password and prints it
# -p prompts the string
# -s silence the input so it invisible while entering 
# -r does not interpret \ (backslash)

read -p 'Enter username : ' username
read -sp 'Enter Password : ' password

echo
echo "Entered username : $username" 
echo "Entered Password : $password"
#!/bin/bash

# Script: Ops 201 Class 02 Ops Challenge Solution
# Author: Andrew P.
# Date of lastest revision: 02/22/2023
# Purpose: To create a bash script to stalk a domain.




filename="Wow.txt"
# Add to your bash script a sixth option that calls a function to:


# Take a user input string. Presumably the string is a domain name such as Google.com.
# I will be using Worldofwarcraft.com for this
echo "Enter a domain name."
read user_input
echo "You entered: $user_input"
 
# Run whois against a user input string.
whois $user_input >> $filename

# Run dig against the user input string.
dig $user_input >> $filename

# Run host against the user input string. 
host $user_input >> $filename

# Run nslookup against the user input string.
nslookup $user_input >> $filename


#Output the results to a single .txt file and open it with your favorite text editor.
function open_with_libreoffice {
    local filename="$1"
    libreoffice --writer "$filename"
}

function
#For this challenge you must use at least one variable and one function.

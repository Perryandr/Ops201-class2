#!/bin/bash

# Script: Ops 201 Class 02 Ops Challenge Solution
# Author: Andrew P.
# Date of lastest revision: 02/08/2023
# Purpose: Print a history of users on this terminal

# Main
login () {
 exec last   
}


count=$(who | grep $USER | wc -l)
echo "$USER is logged on $count times."

login


# End


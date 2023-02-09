#!/bin/bash

# Script: Ops 201 Class 02 Ops Challenge Solution
# Author: Andrew P.
# Date of lastest revision: 02/08/2023
# Purpose: Create an array


# Main

mkdir dir1 dir2 dir3 dir4   
newdir=("./dir1/" "./dir2/" "./dir3/" "./dir4/")


touch "${newdir[0]}/file.txt"
touch "${newdir[1]}/my.txt"
touch "${newdir[2]}/head.txt"
touch "${newdir[3]}/hurts.txt"


# End

#!/bin/bash

# Script: Ops 201 Class 02 Ops Challenge Solution
# Author: Andrew P.
# Date of lastest revision: 02/14/2023
# Purpose: To beat my head against a wall and list some information about a given machine.

#Display name of PC
echo "~computer name~"
echo "$(hostname)"


#display CPU with product/vendor/physical id/bus info/width
echo "~ CPU Information ~"
lshw -class processor | grep -E 'product|vendor|physical id|bus info|width'


#Ram w/ description/physical id/size
sudo lshw -class memory | grep -E 'description|physical id|size'

# note for grader, I was able to seperate the information from the memory, but all of them and not just system. I was unable to find a solution and would greatly appreciate the solution to this.


#display adapter w/description/product/vendor/physical id/bus info/width/clock/capabilities/config/resources
sudo lshw -class display


#network adapter w/ descr/product/vendor/p id/bus info/logical name/version/ serial/size/ cap/width/clock/capab/config/resources

sudo lshw -class network






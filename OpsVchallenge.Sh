#!/bin/bash

# Script: Ops 201 Class 02 Ops Challenge Solution
# Author: Andrew P.
# Date of lastest revision: 02/08/2023
# Purpose: Create an array


# Main

Display_menu (){
echo "What would you like to do?"
echo "1-Display all processes"
echo "2-Enter PID"
echo "3-Kill PID service"
read name
echo " You selected option $name."

#if [ "$name" == "1"]; then
 
 #Display_input



#if [ "$name" == "2"]; then
 
 #Display_input

#else

#if [ "$name" == "1"]; then
#kill_ping


}

Display_menu



display_processes() {
 echo "Running processes:"
 exec ps -e
}

#display_processes


#ask for PID
Display_input(){
 echo "Enter PID for ping termination"
 read name
 echo "PID is $name"
}

#Display_input

#input_var="ping"



#terminate ping with extreme predijuce 
# kill_ping (){
#echo "Nuking the site from orbit"

#}



# End



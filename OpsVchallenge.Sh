#!/bin/bash

# Script: Ops 201 Class 02 Ops Challenge Solution
# Author: Andrew P.
# Date of lastest revision: 02/08/2023
# Purpose: Create an array


# Main


while true; do
  echo "Running processes:"
  ps -e
  
  echo "Enter PID for ping termination"
  read pid_name
  echo "PID is $pid_name"
  
  kill -9 $pid_name
done


# End

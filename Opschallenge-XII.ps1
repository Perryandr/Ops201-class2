#!/bin/bash

# Script: Ops 201 Class 02 Ops Challenge Solution
# Author: Andrew P.
# Date of lastest revision: 02/21/2023
# Purpose: To 


# Resources used were   Select-String from Microsoft learn website and Ethan's class lecture. 




# Create network_report.txt and write the output of ipconfig /all to it
ipconfig /all > network_report.txt

# Use Select-String to find the IPv4 address and output it to the console
Select-String -Path network_report.txt -Pattern 'IPv4 Address' 

# Remove network_report.txt
Remove-Item network_report.txt

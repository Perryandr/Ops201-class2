#!/bin/bash

# Script: Ops 201 Class 02 Ops Challenge Solution
# Author: Andrew P.
# Date of lastest revision: 02/21/2023
# Purpose: To 


# Resources used were   Select-String from Microsoft learn website and Ethan's class lecture. 

# function and variable are required
# Create network_report.txt and write the output of ipconfig /all to it -variable here
$savefile = "network_report.txt" 

ipconfig /all > $savefile



# Use Select-String to find the IPv4 address and output it to the console
Select-String -Path network_report.txt -Pattern 'IPv4 Address' 



# Remove network_report.txt and function placed here


Function removeitem {
Remove-Item network_report.txt

}


removeitem

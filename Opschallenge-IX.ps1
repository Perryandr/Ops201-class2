#!/bin/bash

# Script: Ops 201 Class 07 Ops Challenge Solution
# Author: Andrew P.
# Date of lastest revision: 02/16/2023
# Purpose: To fetch files from system log file in a various ways.

# credit aid for this comes from instructor Ethan and the website https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-eventlog?view=powershell-5.1



    # Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
    Get-EventLog -LogName System -After (Get-Date).AddDays(-1) | Out-File "$env:userprofile\Desktop\last_24.txt"
    
    
    # Output all “error” type events from the System event log to a file on your desktop named errors.txt.
    Get-EventLog -LogName System -EntryType Error | Out-File "$env:userprofile\Desktop\errors.txt"
    
    
    # Print to the screen all events with ID of 16 from the System event log.
    Get-EventLog -LogName System -InstanceId 16
    
    # Print to the screen the most recent 20 entries from the System event log.
    Get-EventLog -LogName System -Newest 20
    
    
    # Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).
    Get-eventlog -logname syste, -newest 500 | Select-object -expandproperty source


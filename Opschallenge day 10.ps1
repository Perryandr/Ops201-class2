#!/bin/bash

# Script: Ops 201 Class 10 Ops Challenge Solution
# Author: Andrew P.
# Date of lastest revision: 02/17/2023
# Purpose: To print and run commands in powershell.

# credit aid for this comes from instructor Ethan and the website Google.com were helpful in identifying the correct commands in executing the following:






    # Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
    Get-Process | Sort-Object -Property CPU -Descending | Format-Table -AutoSize Name, CPU
    
    # Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
    Get-Process | Sort-Object -Property ID -Descending | Format-Table -AutoSize Name, ID
    
   #  Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
   Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 5 Name, WorkingSet 
   
   # Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.
    Start-Process "iexplore.exe" "https://owasp.org/www-project-top-ten/"
    
   #  Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.
    for ($i = 1; $i -le 10; $i++) {
    Start-Process "iexplore.exe" "https://owasp.org/www-project-top-ten/"
    }
    
   # Close all Internet Explorer windows.
    Get-Process iexplore | ForEach-Object { $_.CloseMainWindow() }
    
    #Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge.
    taskkill /PID 2372 
    
    # PID 2372 was listed as my Iexplore PID.


#!/bin/bash

# Script: Ops 201 Class 11 Ops Challenge Solution
# Author: Andrew P.
# Date of lastest revision: 02/20/2023
# Purpose: automate tasks




#This link was used to help complete the assignment https://github.com/superswan/Powershell-SysAdmin 

#Tasks

#Your script should perform the following:

    #Enable File and Printer Sharing
    Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True
    
    #Allow ICMP traffic
    netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4 
    
    #Enable Remote management
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
    
    #Remove bloatware
    iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))
    
    #Enable Hyper-V
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
    
    #Disable SMBv1, an insecure protocol
    Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force

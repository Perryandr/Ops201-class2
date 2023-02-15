#!/bin/bash

# Script: Ops 201 Class 07 Ops Challenge Solution
# Author: Andrew P.
# Date of lastest revision: 02/14/2023
# Purpose: To beat my head against a wall and save J-mans files.



@echo off
set source=C:\Users\j.thompson\Desktop
set destination=E:\Jbackup


robocopy C:\Users\j.thompson\Desktop E:\jbackup /E /r:10 /W:5 /LOG:C:\Users\j.thompson\desktop\robocopy.txt



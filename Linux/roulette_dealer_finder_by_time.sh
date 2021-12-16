#!/bin/bash

Aug_Date=$1
Aug_Time=$2

AM_PM=${Aug_Time: -2}


Time="$(sed "s/AM/""/g" <<<"$Aug_Time")"  
Time="$(sed "s/am/""/g" <<<"$Time")"
Time="$(sed "s/PM/""/g" <<<"$Time")"
Time="$(sed "s/pm/""/g" <<<"$Time")"

Time="${Time} ${AM_PM}"

Dealer_Filepath=~/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/
Filename=${var_date}_Dealer_schedule
First_Name="$(grep -i "$Aug_Time" $Dealer_Filepath${Aug_Date}_Dealer_schedule | awk -F" " '{print($5)}')"
Last_Name="$(grep -i "$Aug_Time" $Dealer_Filepath${Aug_Date}_Dealer_schedule | awk -F" " '{print($6)}')"

echo Date: $Aug_Date 
echo Time: $Aug_Time 
echo First Name: $First_Name 
echo Last Name: $Last_Name 


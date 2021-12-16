#!/bin/bash

Aug_Date=$1
Aug_Time=$2
Aug_Game=$3

Time="$(sed "s/AM/""/g" <<<"$Aug_Time")"  
Time="$(sed "s/am/""/g" <<<"$Time")"
Time="$(sed "s/PM/""/g" <<<"$Time")"
Time="$(sed "s/pm/""/g" <<<"$Time")"

AM_PM=${Aug_Time: -2}

Time="${Time} ${AM_PM}"

Dealer_Filepath=~/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/

Game="$(sed "s/ /_/g" <<<"$Aug_Game")"

Game=${Game}_Dealer_FNAME

Game1="$(head -n1 $Dealer_Filepath${Aug_Date}_Dealer_schedule | awk -F" " '{print $3}' | grep -iw "$Game*")"
Game2="$(head -n1 $Dealer_Filepath${Aug_Date}_Dealer_schedule | awk -F" " '{print $5}' | grep -iw "$Game*")"
Game3="$(head -n1 $Dealer_Filepath${Aug_Date}_Dealer_schedule | awk -F" " '{print $7}' | grep -iw "$Game*")"

if [ ! -z $Game1 ]; then
  Dealer_Name="$(grep -i "$Aug_Time" $Dealer_Filepath${Aug_Date}_Dealer_schedule | awk -F" " '{print($3)} {print($4)}')"
elif [ ! -z $Game2 ]; then
  Dealer_Name="$(grep -i "$Aug_Time" $Dealer_Filepath${Aug_Date}_Dealer_schedule | awk -F" " '{print($5)} {print($6)}')"
elif [ ! -z $Game3 ]; then
  Dealer_Name="$(grep -i "$Aug_Time" $Dealer_Filepath${Aug_Date}_Dealer_schedule | awk -F" " '{print($7)} {print($8)}')"
else
  echo "Dealer not found."
  exit 1;
fi


echo Date: $Aug_Date 
echo Time: $Aug_Time 
echo Dealer Name: $Dealer_Name  


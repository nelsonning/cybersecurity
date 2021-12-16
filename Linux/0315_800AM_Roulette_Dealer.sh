#!/bin/bash

Date=0315
Time="08:00:00 AM"
Dealer_Filepath=~/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/
Filename=${var_date}_Dealer_schedule
First_Name="$(grep "$Time" $Dealer_Filepath${Date}_Dealer_schedule | awk -F" " '{print($5)}')"
Last_Name="$(grep "$Time" $Dealer_Filepath${Date}_Dealer_schedule | awk -F" " '{print($6)}')"

echo Date: $Date >> Dealers_working_during_losses
echo Time: $Time >> Dealers_working_during_losses
echo First Name: $First_Name >> Dealers_working_during_losses
echo Last Name: $Last_Name >> Dealers_working_during_losses
echo $'\n' >> Dealers_working_during_losses


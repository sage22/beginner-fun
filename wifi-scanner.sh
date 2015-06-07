#!/bin/bash
# "The purpose of this script is to Scan the Wifi Signal Strenghth of your Local Network"
# Written By:Donovan Chandler"
clear
echo "What Interface"
read wlan0
sleep 2
clear

echo "Wifi it is"
sleep 4
clear
echo "Full scan or half"
read full
sleep 2
clear

if [ "$full" == full ]
then
echo "full scan it is"
clear
sleep 1
echo "Here is the Wifi Signal Strenghth & Interferance Info"
sleep 5
watch -n 1 cat /proc/net/wireless
elif  [ "$full" == half ]
then
watch -n 1 "awk 'NR==3 {print \"WiFi Signal Strength = \" \$3 \"00 %\"}''' /proc/net/wireless"
fi

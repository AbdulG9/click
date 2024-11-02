#!/bin/bash
# CLICK	is a tool to backup and restore termux(ONLY)
# colours
#---------------------------
red='\033[1;31m'
grn='\033[1;32m'
ylo='\033[1;33m'
blue='\033[1;34m'
pink='033[1;35m'
cyan='\033[1;36m'
rset='\033[0m'
#---------------------------
# CODE:-
clear
echo  " "
figlet "CLICK !" | lolcat -a -d 2
echo -e "\n $red      -->Coded by $cyan Z9 $red<--$rset "
echo -e "$ylo ---- BACKUP | RESTORE FOR TERMUX ---- $rset"
echo -e "$blue OPTIONS: $rset"
echo -e " \n 1)BACKUP \n \n2)RESTORE \n \n3)EXIT"
echo -e "\n $cyan Enter option:- "
read choice
case "$choice" in
1)
echo "Press Enter to start Backup: "
read b
cd $HOME
cd click/main
bash backup.sh
;;
2)
echo "Press Enter to start Restore: "
read r
cd $HOME
cd click/main
bash restore.sh
;;
3)
cd $HOME
;;

esac

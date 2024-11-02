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
echo  " 
  ____ _     ___ ____ _  __  _
 / ___| |   |_ _/ ___| |/ / | |
| |   | |    | | |   | ' /  | |
| |___| |___ | | |___| . \  |_|
 \____|_____|___\____|_|\_\ (_)
 " | lolcat -a -d 2
echo -e "\n $red      -->Coded by $cyan Z9 $red<--$rset "
echo -e "$ylo ---- BACKUP | RESTORE FOR TERMUX ---- $rset"
echo -e "$blue OPTIONS: $rset"
echo -e " \n $cyan 1)BACKUP \n \n  2)RESTORE \n \n  3)UPDATE \n \n  4)RESET \n \n  5)EXIT $rset"
echo -e -n "\n $ylo Enter option:- "
read choice
case "$choice" in
1)
echo -e "$grn Press Enter to start BACKUP / Press n to exit: $rset"
read b
if [ "$b" == "n" ];then
cd $HOME
cd click
bash click.sh
else
cd $HOME
cd click/main
bash backup.sh
fi
;;
2)
echo -e "$grn Press Enter to start RESTORE / Press n to exit: $rset"
read r
if [ "$r" == "n" ];then
cd $HOME
cd click
bash click.sh
else
cd $HOME
cd click/main
bash restore.sh
fi
;;
3)
echo  -e "$grn Press y to start UPDATE / Press n to exit: $rset"
read u
if [ "$u" == "n" ];then
cd $HOME
cd click
bash click.sh
else
cd $HOME
cd click/main
bash update.sh
fi
;;
4)
echo -e "$grn Press Enter to start RESET / Press n to exit: $rset"
read R
if [ "$R" == "n" ];then
cd $HOME
cd click
bash click.sh
else
cd $HOME
cd click/main
bash reset.sh
fi
;;
5)
clear
echo -e "  
 ____   __   __  _____   _
| __ )  \ \ / / | ____| | |
|  _ \   \ V /  |  _|   | |
| |_) |   | |   | |___  |_|
|____/    |_|   |_____| (_)
" | lolcat -a -d 3
exit
esac

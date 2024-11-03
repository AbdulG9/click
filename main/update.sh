#!/bin/bash
# colours
#---------------------------
red='\033[1;31m'
grn='\033[1;32m'
ylo='\033[1;33m'
blue='\033[1;34m'
pink='\033[1;35m'
cyan='\033[1;36m'
rset='\033[0m'
#---------------------------
# CODE:-
clear
echo -e -n " $red Click is being updated $rset"

for i in {1..10};
do
echo -n -e "$ylo#" 
sleep "1"
done
sleep "1"
cd $HOME
rm -rf $HOME/click
apt update && apt upgrade
git clone https://github.com/AbdulG9/click
 clear
sleep "3"
echo -e "$cyan ---> click Updated succesfully <--- $rset"
sleep "3"
cd $HOME
cd click
bash click.sh


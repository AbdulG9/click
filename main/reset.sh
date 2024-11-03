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
echo -e "$red ---> Want to perform$blue BACKUP$rset $red before$pink RESET$red (y), if already have backup (n): $rset"
read br
if [ "$br" == "y" ]; then
cd $HOME/click/main
bash backup.sh
else
for i in {1..10}; do
echo -e "$red                        Termux reset started $rset" | lolcat -a 
clear
done
mkdir $HOME/del
mv $HOME/* $HOME/del
cd $HOME/del
cp -rf $HOME/del/click $HOME
rm -rf $HOME/del
clear
echo "$red                         Termux reset successfull! $rset" | lolcat -a
cd $HOME/click
bash click.sh
fi

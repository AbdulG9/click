#!/bin/bash
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
for i in {1..10}; do
echo -e "$red                        Termux reset started $rset" | lolcat -a 
clear
done
cd $HOME
mkdir del
mv * del
cd del
cp -rf click $HOME
cd $HOME
rm -rf del
clear
echo "$red                         Termux reset successfull! $rset" | lolcat -a
cd $home
cd click
bash click.sh

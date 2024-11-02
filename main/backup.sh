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
echo -n -e "$red Termux backup has started$rset"
for i in {1..3};do
echo -n "."
sleep "2"
done
sleep "1"
cd $HOME
cd ..
cd usr/etc
cp bash.bashrc $HOME
cd $HOME
mkdir clickbackup
cp -rf * clickbackup
cd clickbackup
rm -rf clickbackup
cd $HOME
termux-setup-storage
cd $HOME
cp clickbackup storage
rm -rf clickbackup
clear
echo -e "$red                                       Termux Backup completed succesfully... $rset"
echo -e "$ylo \n \n \n \n Press enter to continue: $rset"
read x
cd $HOME
cd click
bash click.sh

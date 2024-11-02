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
echo -e -n "Checking for any Restoration Files"
for i in {1..5}; do
echo "."
sleep "1"
done
termux-setup-storage
cd $HOME
cd storage
cp clickbackup $HOME
cd $HOME
cd clickbackup
mv * $HOME
cd $HOME
rm -rf clickbackup
mv bash.bashrc /data/data/com.termux/files/usr/etc
clear
echo -e "$grn Termux restore completed successfully! $rset"
sleep "2"
cd $HOME
cd click
bash click.sh

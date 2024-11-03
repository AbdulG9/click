#!/bin/bash
# BACKUP
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
echo -n -e "$red Termux backup has started$rset"
for i in {1..3};do
echo -n "."
sleep "2"
done
sleep "1"
cd /data/data/com.termux/files/usr/etc/
cp bash.bashrc $HOME
cd $HOME
rm -rf $HOME/clickbackup
mkdir clickbackup
cp -rf $HOME/* $HOME/clickbackup
rm -rf $HOME/clickbackup/clickbackup
cd $HOME
termux-setup-storage
tar -czvf clickbackup.tar.gz $HOME/clickbackup
mv clickbackup.tar.gz /sdcard
rm -rf clickbackup
rm bash.bashrc
clear
echo -e "$red                                       Termux Backup completed succesfully... $rset"
echo -e "$ylo \n \n \n \n Press enter to continue: $rset"
read x
cd $HOME
cd click
bash click.sh

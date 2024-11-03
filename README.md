# CLICK - Termux Backup and Restore Tool

**CLICK** is a simple yet powerful tool designed for backing up, restoring, and resetting your Termux environment. With a user-friendly interface and straightforward commands, CLICK makes it easy to manage your Termux data and configurations. 

## Features

- **BACKUP**: Create comprehensive backups of your Termux files, packages, and settings with just one command.
- **RESTORE**: Quickly restore your Termux environment from previously created backups, ensuring you can get back to work without hassle.
- **RESET**: Easily reset your Termux setup to its original state, perfect for when you want a fresh start or need to troubleshoot issues.
- - **UPDATE**: Easily update click tool with just one tap.

## Installation

To get started, clone this repository by following commands below:
* `apt-get update && upgrade -y`
* `pkg install python -y`
* `pkg install python2 -y`
* `pkg install git -y`
* `pip install lolcat`
* `cd $HOME`
* `git clone https://github.com/AbdulG9/click`
* `cd click`
* `./click.sh`

## Usage

* `cd click`
* `./click.sh`
* **OPTIONS** :-
* 
* 1) **BACKUP**
     This option creates a backup file of your termux named as "clickbackup.tar.gz" and saves it in your mobile home directory.
     
* 2) **RESTORE**
     This option restores termux using a backup file created by using this tool.
* NOTE:- To restore termux a restoration file ie( clickbackup.tar.gz ) is supposed to be present in your mobiles home directory ie ( /storage/emulated/0/ ).
     
* 3) **RESET**
      This option resets the termux by deletes all the files and directories of termux for a fresh start!
* NOTE:- Consider creating an backup before resetting termux as the deleted data cant be restored if no backup file is present.
     
* 4) **UPDATE**
     This option is used to Update click tool in just one tap.
     
* 5) **EXIT**
     Using this option you can exit the click tool.

## Contributing

Contributions are welcome! Feel free to submit issues or pull requests to enhance the functionality of CLICK.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.

---

Get started with CLICK today and take control of your Termux environment!

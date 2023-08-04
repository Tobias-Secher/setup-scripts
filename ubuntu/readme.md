# Setup for ubuntu OS

**DO THIS AT YOUR OWN RISK**
<br />
<br />
This is a shell script for instaling the basic programs. To use this create a sh script at any location in your system, but remember the location. (In this guide it will be created in the `Documents` folder)
<br />
<br />
Copy the code from `ubuntu-setup.sh` into your script. After the script is copied over, run these commands in your terminal. (Make sure the path is correct for your script location)

```bash
chmod +x ~/Documents/ubuntu-setup.sh
# to run the script use the following command:
~/Documents/ubuntu-setup.sh
```
<br />
After the installation is complete, reboot your pc and run this command to install node using nvm:

```bash
nvm install lts --default
```
## Uninstall
In order to uninstall the setup, follow the steps above, BUT copy the code from `uninstall-ubuntu-setup.sh`.
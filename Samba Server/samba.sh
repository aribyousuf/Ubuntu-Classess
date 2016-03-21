#!/bin/bash



echo 1st step

sudo apt-get update

echo 2nd step

sudo apt-get install samba

echo 3rd step 

sudo gedit /etc/samba/smb.conf

#Add these lines in the end of Configuration file (These are the setting of your share Directory)
["Directory Name"]
comment = Ubuntu File Server Share
path = "Directory Destination"
browsable = yes
guest ok = yes
read only = no
create mask = 0755


echo 4th step

sudo mkdir "Create Directory with the same name as you have written in the config file of server"

echo 5th step

sudo chown nobody:nogroup "Path of directory"
echo 6th step

sudo restart smbd

echo 7th step

sudo restart nmbd

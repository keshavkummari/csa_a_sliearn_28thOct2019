#!/bin/bash

# Update the Repo 
# apt update
yum update -y

# Install Utility Softwares 
#apt install wget* curl* vim* unzip* git* -y
yum install wget* curl* vim* unzip* git* -y

# Installing of WebServers:
#apt install apache2
yum install http* --skip-broken -y

# Start the Daemon/Service :
#service apache2 start 
service httpd start

# Enable the Service at BootLevel 
#chkconfig apache2 on
chkconfig httpd on

# Navigate to /var/www/html/
cd /var/www/html/

# Mount the DocumentRoot Folder with EFS Shared Path 
mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport fs-af70c14d.efs.us-east-1.amazonaws.com:/ /var/www/html/

# Download the Code 
wget https://github.com/keshavkummari/codewithckk/archive/master.zip 

DevOps Please deploy a updated code :
2
= 5 minutes 
wget https://github.com/keshavkummari/codewithckk/archive/master.zip 

HSBC , Netflix : 100 Asia Region : 

Sharing : NFS  ; EFS 

home/keshavkummari : ShareDrive  

# Unzip the Code 
unzip master.zip

# Go to the Folder 
cd codewithckk-master/

# Move the code to one level back 
mv * ../
cd ../

# Remove the Folder and Zip file 
rm -rf codewithckk-master/
rm -rf master.zip

# Start the Daemon/Service :
#service apache2 start 
service httpd start

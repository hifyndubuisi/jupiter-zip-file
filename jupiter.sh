#!/bin/bash
sudo su
yum update -y
yum install -y httpd
cd /var/www/html
wget https://github.com/hifyndubuisi/jupiter-zip-file/blob/main/jupiter-main.zip 
unzip jupiter-main.zip
cp -r jupiter-main/* /var/www/html
rm -rf jupiter-main jupiter-main.zip
systemctl start httpd
systemctl enable httpd
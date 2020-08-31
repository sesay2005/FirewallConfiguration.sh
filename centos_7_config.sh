#!/bin/bash
#Author:Aruna Bakarr Sesay
#Date:08-26-2020

echo "Please press 1, to configure Firewall on centos 7"
sleep 2

echo "1- Firewall Cofiguration"
read F

case $F in
         1)
          yum install httpd -y
          systemctl start httpd
          systemctl enable httpd
          firewall-cmd -- permanent --add-port=80/tcp
          firewall-cmd --reload
esac


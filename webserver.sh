#!/bin/bash

yum install -y httpd
systemctl restart httpd.service
systemctl enable httpd.service

firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --reload
cp -arvf /root/website/*   /var/www/html
echo "Webserver successfully setup"

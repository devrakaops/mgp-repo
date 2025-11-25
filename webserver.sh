#!/bin/bash

yum install -y httpd
systemctl restart httpd.service
systemctl enable httpd.service

firewall-cmd --permanent --add-port=80/tcp

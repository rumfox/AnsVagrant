#!/usr/bin/env bash

echo "-----------------------------------"
echo "------- 1 (Bootstrap_node.sh) ----------"
echo "-----------------------------------"
yum install epel-release -y 

echo "-----------------------------------"
echo "------- 2 (Bootstrap_node.sh) ----------"
echo "-----------------------------------"
sed -i 's/https/http/g' /etc/yum.repos.d/epel.repo
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config;
systemctl restart sshd;

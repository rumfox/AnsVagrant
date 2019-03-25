#!/usr/bin/env bash

#yum install http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm -y
#rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6
#yum update -y
echo "-----------------------------------"
echo "------- 1 (Bootstrap.sh) ----------"
echo "-----------------------------------"
yum install epel-release -y 

echo "-----------------------------------"
echo "------- 2 (Bootstrap.sh) ----------"
echo "-----------------------------------"
sed -i 's/https/http/g' /etc/yum.repos.d/epel.repo
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config;
systemctl restart sshd;

echo "-----------------------------------"
echo "------- 3 (Bootstrap.sh) ----------"
echo "-----------------------------------" 
yum install ansible -y
   
#hosts file
echo "192.168.56.11 node01" >> /etc/hosts
echo "192.168.56.12 node02" >> /etc/hosts
echo "192.168.56.13 node03" >> /etc/hosts
#echo "192.168.56.14 node04" >> /etc/hosts
#echo "192.168.56.15 node05" >> /etc/hosts

#ansible hosts file
echo "[Nodes]" >> /etc/ansible/hosts
echo "node01" >> /etc/ansible/hosts
echo "node02" >> /etc/ansible/hosts
echo "node03" >> /etc/ansible/hosts
#echo "node04" >> /etc/ansible/hosts
#echo "node05" >> /etc/ansible/hosts

#환경설정 초기 파일 구성 for vagrant ONLY
mkdir /home/vagrant/.vim
touch /home/vagrant/.vimrc
touch /home/vagrant/.bashrc

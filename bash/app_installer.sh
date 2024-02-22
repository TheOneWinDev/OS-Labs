#!/bin/bash

groupadd app

usermod -a -G app user
usermod -a -G app guest

sudo mkdir -p /opt/app
sudo mkdir -p /usr/lib/app
sudo mkdir -p /etc/Kozlov

sudo touch /opt/app/no_name
sudo touch /usr/lib/app/lib.lib
sudo touch /etc/Kozlov/pwd.conf

sudo chmod g+rx /opt/app/no_name
sudo chmod g+rx /usr/lib/app/lib.lib
sudo chmod g+rx /etc/Kozlov/pwd.conf

> /etc/Kozlov/pwd.conf
echo "/opt/app" >> /etc/Kozlov/pwd.conf
echo "/opt/app/no_name" >> /etc/Kozlov/pwd.conf
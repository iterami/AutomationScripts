#!/bin/sh

# No arguments.

# Disable AppArmor profile for MySQL.
sudo ln -s /etc/apparmor.d/usr.sbin.mysqld /etc/apparmor.d/disable/usr.sbin.mysqld

# Restart AppArmor.
sudo /etc/init.d/apparmor restart
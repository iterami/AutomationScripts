#!/bin/sh

# No arguments.

# Synchronize installed packages.
sudo apt-get update -y

# Update installed packages to latest available version.
sudo apt-get upgrade -y

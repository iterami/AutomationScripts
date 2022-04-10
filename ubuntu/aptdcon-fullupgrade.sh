#!/bin/sh
set -eux

# No args.
# Example usage: sh aptdcon-fullupgrade.sh

# Update packages to latest available version
#   and handle dependencies.
sudo aptdcon -c -d --full-upgrade

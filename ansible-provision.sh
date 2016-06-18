#!/bin/bash

echo "Udating packages"
apt-get update -y

#dpkg -s ansible &>/dev/null || {
#  echo "ansible is not installed - installling now..."
#  apt-get install -y ansible
#}

if dpkg -s ansible > /dev/null 2>&1; then
  echo "ansible already installed, bypassing..."
else
  echo "ansible not installed, installing now..."
  apt-get install -y ansible
fi  


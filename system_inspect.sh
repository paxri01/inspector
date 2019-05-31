#!/bin/bash

# Line seperator
LINE='==============================='

# List of services to display
services=(
  ntpd
  sshd
  snmpd
  )

# Display service status
echo $LINE
for PACKAGE in ${services[*]}; do
  sudo systemctl status "$PACKAGE" --full
done

# Install cowsay
echo $LINE
sudo yum -y install cowsay

# Display last 10 events from system journal
echo $LINE
sudo journalctl -n --no-pager


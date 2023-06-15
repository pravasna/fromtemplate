#!/bin/bash

# Display free disk space
df -h

# Print # of CPUs

nproc

cat /proc/cpuinfo

# Ram

free -m

# IP Address
curl ifconfig.me

# MAC Address (NOTE This will work only on MAC), 
ifconfig -a
 # For Mac - networksetup -listallhardwareports 
# Pre-Commit Message

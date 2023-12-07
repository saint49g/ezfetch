#!/bin/bash

echo " OS:" `cat /etc/os-release | head -n 1 | cut -d '=' -f 2 | tr [:punct:] " "` `uname -m` 
echo " Kernel:" `uname -r` 
echo "󰌢 Host:" `cat /sys/devices/virtual/dmi/id/product_name`
echo " Cpu:" `grep 'model name' /proc/cpuinfo | head -n 1 | cut -d ':' -f 2` 
echo " Memory: `free -h | grep "Mem:" | awk '{print $3}'` | `free -h | grep "Mem:" | awk '{print $2}'`" 
echo " Shell:" `echo "$SHELL"`
echo " DE/WM: $DESKTOP_SESSION"
echo " Uptime:" `uptime -p`
echo "󰮯          "












#!/bin/sh

echo "==============================="
echo "   System CPU Load & Status"
echo "==============================="

# Get system uptime
echo "Uptime:"
uptime
echo "-------------------------------"

# Get CPU Load
echo "CPU Load Average:"
cat /proc/loadavg
echo "-------------------------------"

# Get CPU Usage
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"
echo "-------------------------------"

# Get Memory Usage
echo "Memory Usage:"
free -h
echo "-------------------------------"

# Get Disk Usage
echo "Disk Usage:"
df -h
echo "-------------------------------"

# Get Top CPU-consuming Processes
echo "Top 5 CPU-Consuming Processes:"
ps aux --sort=-%cpu | head -6
echo "==============================="


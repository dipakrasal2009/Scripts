#!/bin/bash
# system-monitor.sh - Simple system monitoring script

echo "==============================="
echo " 🖥️  System Monitoring Report"
echo "==============================="

# CPU usage
echo -e "\n🔹 CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Load: " $2 + $4 "%"}'

# Memory usage
echo -e "\n🔹 Memory Usage:"
free -h | awk '/Mem:/ {print "Used: "$3 " / Total: "$2}'

# Disk usage
echo -e "\n🔹 Disk Usage:"
df -h --total | grep 'total' | awk '{print "Used: "$3 " / Total: "$2 " ("$5" used)"}'

# Top 5 processes by memory usage
echo -e "\n🔹 Top 5 Processes (by memory):"
ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -n 6

echo "==============================="


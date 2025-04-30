#!/bin/bash

clear
echo "=================SYSTEM METRICS====================="

echo -e "\n--- CPU USAGE ---"
top -b -n1 |grep "Cpu(s)"

echo -e "\n--- MEMORY USAGE ---"
free -h

echo -e "\n--- DISK USAGE ---"
df -h |grep '^/dev/'

echo -e "\n--- TOP 5 MEMORY-CONSUMING PROCESSES ---"
ps aux --sort=-%mem | head -n 6

echo -e "\n--- TOP 5 CPU-CONSUMING PROCESSES ---"
ps aux --sort=-%cpu | head -n 6

echo "===================================================="


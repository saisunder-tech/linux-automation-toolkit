#!/bin/bash

# ------------------------------------
# Linux CPU Monitoring Script
# Author : Sai Sunder
# ------------------------------------

echo "======================================"
echo "      CPU Monitoring Script"
echo "======================================"

# Collect system information
CURRENT_DATE=$(date)
CURRENT_USER=$(whoami)
HOST_NAME=$(hostname)

# Get CPU idle percentage
CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')

# Calculate CPU usage
CPU_USAGE=$(echo "100 - $CPU_IDLE" | bc)

# Display collected information
echo "Date and Time : $CURRENT_DATE"
echo "Current User  : $CURRENT_USER"
echo "Hostname      : $HOST_NAME"
echo "CPU Idle      : $CPU_IDLE%"
echo "CPU Usage     : $CPU_USAGE%"


#!/bin/bash

echo "======================================"
echo "      CPU Monitoring Script"
echo "======================================"

CURRENT_DATE=$(date)
CURRENT_USER=$(whoami)
HOST_NAME=$(hostname)
CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')
CPU_USAGE=$(echo "100 - $CPU_IDLE" | bc)

echo "Date and Time : $CURRENT_DATE"
echo "Current User  : $CURRENT_USER"
echo "Hostname      : $HOST_NAME"
echo "CPU Idle      : $CPU_IDLE%"
echo "CPU Usage     : $CPU_USAGE%"


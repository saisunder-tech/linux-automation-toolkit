#!/bin/bash

# ======================================
# Memory Monitoring Script
# Author: Sai Sunder
# Description: Displays system memory information
# ======================================

# Display script header
echo "======================================"
echo "      Memory Monitoring Script"
echo "======================================"

# Store system information
DATE=$(date)
USER_NAME=$(whoami)
HOST=$(hostname)

# Display system information
echo "Date and Time : $DATE"
echo "Current User  : $USER_NAME"
echo "Hostname      : $HOST"

echo ""

# Get memory information in MB
MEMORY_INFO=$(free -m | grep Mem)

# Extract memory values
TOTAL_MEMORY=$(echo "$MEMORY_INFO" | awk '{print $2}')
USED_MEMORY=$(echo "$MEMORY_INFO" | awk '{print $3}')
FREE_MEMORY=$(echo "$MEMORY_INFO" | awk '{print $4}')

# Display memory statistics
echo "Total Memory  : ${TOTAL_MEMORY} MB"
echo "Used Memory   : ${USED_MEMORY} MB"
echo "Free Memory   : ${FREE_MEMORY} MB"

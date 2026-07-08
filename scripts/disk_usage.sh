#!/bin/bash

# ======================================
# Disk Usage Monitoring Script
# Author: Sai Sunder
# Description: Displays disk usage information
# ======================================

# Display script header
echo "======================================"
echo "    Disk Usage Monitoring Script"
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

# Get disk information for the root filesystem
DISK_INFO=$(df -h / | grep "/")

# Extract disk values
TOTAL_DISK=$(echo "$DISK_INFO" | awk '{print $2}')
USED_DISK=$(echo "$DISK_INFO" | awk '{print $3}')
AVAILABLE_DISK=$(echo "$DISK_INFO" | awk '{print $4}')
USAGE_PERCENT=$(echo "$DISK_INFO" | awk '{print $5}')

# Display disk statistics
echo "Total Disk    : $TOTAL_DISK"
echo "Used Disk     : $USED_DISK"
echo "Available     : $AVAILABLE_DISK"
echo "Usage         : $USAGE_PERCENT"
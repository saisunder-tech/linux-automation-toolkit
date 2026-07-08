#!/bin/bash

# ======================================
# Service Status Script
# Author: Sai Sunder
# Description: Checks whether a specified service is active
# ======================================

# Display script header
echo "======================================"
echo "      Service Status Script"
echo "======================================"

# Collect system information
DATE=$(date)
USER_NAME=$(whoami)
HOST=$(hostname)

# Display system information
echo "Date and Time : $DATE"
echo "Current User  : $USER_NAME"
echo "Hostname      : $HOST"
echo

# Ensure exactly one argument (service name) is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <service-name>"
    exit 1
fi

# Store the service name
SERVICE="$1"

# Check whether the service is active
if systemctl is-active --quiet "$SERVICE"; then
    echo "Service '$SERVICE' is running."
else
    echo "Service '$SERVICE' is not running."
fi


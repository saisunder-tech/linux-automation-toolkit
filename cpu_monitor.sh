#!/bin/bash

GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
CYAN="\e[36m"
RESET="\e[0m"

# ------------------------------------
# Linux CPU Monitoring Script
# Author : Sai Sunder
# ------------------------------------

echo -e "${BLUE}======================================${RESET}"
echo -e "${CYAN}      CPU Monitoring Script${RESET}"
echo -e "${BLUE}======================================${RESET}"

# Collect system information
CURRENT_DATE=$(date)
CURRENT_USER=$(whoami)
HOST_NAME=$(hostname)

# Get CPU idle percentage
CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')

# Calculate CPU usage
CPU_USAGE=$(echo "100 - $CPU_IDLE" | bc)

# Display collected information
echo -e "${GREEN}Date and Time :${RESET} $CURRENT_DATE"
echo -e "${GREEN}Current User  :${RESET} $CURRENT_USER"
echo -e "${GREEN}Hostname      :${RESET} $HOST_NAME"

echo -e "${YELLOW}CPU Idle      :${RESET} $CPU_IDLE%"
echo -e "${YELLOW}CPU Usage     :${RESET} $CPU_USAGE%"


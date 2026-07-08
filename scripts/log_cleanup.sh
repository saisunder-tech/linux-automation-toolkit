#!/bin/bash

# ======================================
# Log Cleanup Script
# Author: Sai Sunder
# Description: Deletes .log files older than a specified number of days.
# ======================================

echo "======================================"
echo "         Log Cleanup Script"
echo "======================================"

if [ $# -ne 2 ]; then
    echo "Usage: $0 <log_directory> <days>"
    exit 1
fi

LOG_DIR="$1"
DAYS="$2"

if [ ! -d "$LOG_DIR" ]; then
    echo "Error: '$LOG_DIR' is not a directory."
    exit 1
fi

find "$LOG_DIR" -type f -name "*.log" -mtime +"$DAYS" -print -delete

echo "Log cleanup completed."

#!/bin/bash

# ======================================
# Cron Setup Script
# Author: Sai Sunder
# Description: Adds a cron job for a script.
# ======================================

echo "======================================"
echo "         Cron Setup Script"
echo "======================================"

# Verify that a schedule and script path are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 '<cron schedule>' <script-path>"
    exit 1
fi

SCHEDULE="$1"
SCRIPT_PATH="$2"

# Add the new cron job while preserving existing ones
(crontab -l 2>/dev/null; echo "$SCHEDULE $SCRIPT_PATH") | crontab -

echo "Cron job added:"
echo "$SCHEDULE $SCRIPT_PATH"

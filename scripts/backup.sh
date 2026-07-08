#!/bin/bash

# ======================================
# Backup Script
# Author: Sai Sunder
# Description: Creates a timestamped compressed backup
#              of a specified directory.
# ======================================

# Display script header
echo "======================================"
echo "           Backup Script"
echo "======================================"

# Verify that exactly one argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Store and validate the source directory
SOURCE_DIR="$1"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: '$SOURCE_DIR' is not a directory."
    exit 1
fi

# Create the backup filename
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="backup_${TIMESTAMP}.tar.gz"

# Create the compressed archive
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

echo "Backup created successfully: $BACKUP_FILE"

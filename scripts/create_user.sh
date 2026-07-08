#!/bin/bash

# ======================================
# Create User Script
# Author: Sai Sunder
# Description: Creates a new Linux user account.
# ======================================

echo "======================================"
echo "         Create User Script"
echo "======================================"

# Ensure exactly one username is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

USERNAME="$1"

# Ensure the script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script with sudo."
    exit 1
fi

# Create the user and a home directory
useradd -m "$USERNAME"

if [ $? -eq 0 ]; then
    echo "User '$USERNAME' created successfully."
else
    echo "Failed to create user '$USERNAME'."
fi

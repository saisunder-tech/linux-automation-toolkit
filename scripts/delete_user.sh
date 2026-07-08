#!/bin/bash

# ======================================
# Delete User Script
# Author: Sai Sunder
# Description: Deletes an existing Linux user account
#              and its home directory.
# ======================================

echo "======================================"
echo "         Delete User Script"
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

# Check that the user exists
if ! id "$USERNAME" >/dev/null 2>&1; then
    echo "User '$USERNAME' does not exist."
    exit 1
fi

# Delete the user and its home directory
if userdel -r "$USERNAME"; then
    echo "User '$USERNAME' deleted successfully."
else
    echo "Failed to delete user '$USERNAME'."
    exit 1
fi

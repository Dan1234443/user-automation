#!/bin/bash

echo "======================================="
echo "      🚀 User Automation Script"
echo "======================================="

# Check if running as root
if [[ $EUID -ne 0 ]]; then
    echo "❌ Please run this script with sudo."
    exit 1
fi

# Ask for username
read -p "Enter new username: " username

# Check if username is empty
if [[ -z "$username" ]]; then
    echo "❌ Username cannot be empty."
    exit 1
fi

# Check if user already exists
if id "$username" &>/dev/null; then
    echo "⚠️ User '$username' already exists."
    exit 1
fi

# Confirm before creating
read -p "Are you sure you want to create user '$username'? (y/n): " confirm

if [[ "$confirm" != "y" ]]; then
    echo "❌ Operation cancelled."
    exit 0
fi

# Create user with home directory
useradd -m "$username"

# Check if creation succeeded
if [[ $? -eq 0 ]]; then
    echo "✅ User '$username' created successfully."
    
    # Set password interactively
    echo "Set password for $username:"
    passwd "$username"

    echo "🎉 Automation completed successfully."
else
    echo "❌ Failed to create user."
fi

echo "======================================="
echo " Script created by Dan-Herete"
echo "======================================="
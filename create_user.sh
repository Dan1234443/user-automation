#!/bin/bash
echo "Starting user automation"
echo "Enter username:"
read username

sudo useradd $username

echo "User $username created successfully."
echo "Automation completed."
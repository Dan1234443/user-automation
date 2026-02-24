#!/bin/bash

echo "Enter username:"
read username

sudo useradd $username

echo "User $username created successfully."

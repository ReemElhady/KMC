#!/bin/bash

# Script to enable public key authentication

# Replace 'authorized_keys' with the path to your authorized_keys file
AUTHORIZED_KEYS_FILE="$HOME/.ssh/authorized_keys"

# Generate SSH key pair if not already exists
if [ ! -f "$AUTHORIZED_KEYS_FILE" ]; then
    ssh-keygen -t rsa -b 4096 -C "az@az-studios.com" -f "$AUTHORIZED_KEYS_FILE" -N ""
fi


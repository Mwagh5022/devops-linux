#!/bin/bash

read -p "Enter Group Name: " GROUP
read -p "Enter User Names (space separated): " USERS

# Create group if not exists
if ! getent group "$GROUP" > /dev/null; then
    sudo groupadd "$GROUP"
    echo "Group $GROUP created"
else
    echo "Group $GROUP already exists"
fi

# Loop through users
for USER in $USERS
do
    # Create user if not exists
    if ! id "$USER" &>/dev/null; then
        sudo useradd -m "$USER"
        sudo passwd "$USER"
        echo "User $USER created"
    fi

    # Add user to group
    sudo usermod -aG "$GROUP" "$USER"
    echo "User $USER added to $GROUP"
done

# Verify
echo
echo "Group members:"
getent group "$GROUP"


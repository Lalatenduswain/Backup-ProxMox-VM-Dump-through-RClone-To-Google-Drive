#!/bin/bash

# Source directory
source_dir="/var/lib/vz/dump"

# Destination remote and folder with today's date
remote="DriveRemoteName:Remote_Folder_Name/$(date +'%Y_%m_%d')/"

# Check if rclone is installed
if ! command -v rclone &> /dev/null; then
    echo "rclone is not installed. Please install rclone and configure it."
    exit 1
fi

# Check if the source directory exists
if [ ! -d "$source_dir" ]; then
    echo "Source directory '$source_dir' does not exist."
    exit 1
fi

# Check if the remote exists
if ! rclone about "$remote" &> /dev/null; then
    echo "Remote '$remote' does not exist or is not configured."
    exit 1
fi

# Upload all files from the source directory to the remote
rclone copy -P "$source_dir" "$remote"

# Check the exit status of the rclone command
if [ $? -eq 0 ]; then
    echo "Upload completed successfully."
    
    # Verify the synchronization
    if rclone check "$source_dir" "$remote"; then
        echo "Synchronization verified. Source and destination match."
    else
        echo "Synchronization check failed. Please review the logs."
        exit 1
    fi
    
else
    echo "Upload failed."
    exit 1
fi

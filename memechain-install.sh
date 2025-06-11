#!/bin/bash

# ASCII art
echo "                                    _           _       ";
echo " _ __ ___   ___ _ __ ___   ___  ___| |__   __ _(_)_ __  ";
echo "| '_ \` _ \ / _ \ '_ \` _ \ / _ \/ __| '_ \ / _\` | | '_ \ ";
echo "| | | | | |  __/ | | | | |  __/ (__| | | | (_| | | | | |";
echo "|_| |_| |_|\___|_| |_| |_|\___|\___|_| |_|\__,_|_|_| |_|";
echo "";
echo "";

# Declare a log file and a temp directory
LOGFILE="$HOME/memechain-temp/logfile.log"
TEMP_DIR="$HOME/memechain-temp"

# Parse command line arguments

# Check if the directory exists
if [ -d "$TEMP_DIR" ]; then
    read -p "Directory $TEMP_DIR exists. Do you want to clear it out? (y/n) " -n 1 -r
    echo    # move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        rm -rf "$TEMP_DIR"
        echo "Directory $TEMP_DIR has been removed."
    fi
fi

# Create a temporary directory to work from
mkdir -p "$TEMP_DIR"
touch "$LOGFILE"

# Log and print the log file location
echo "Log file is located at: $LOGFILE" | tee -a "$LOGFILE"

# Change to $TEMP_DIR and print a message
cd "$TEMP_DIR" || exit 1
echo "Working from temporary directory: $TEMP_DIR" | tee -a "$LOGFILE"

# add some install script here

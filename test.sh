#!/bin/bash

# This is a sample shell script

# Print a welcome message
echo "Welcome to the sample shell script!"

# Prompt for user input
echo "Please enter your name:"
read name

# Print a personalized greeting
echo "Hello, $name!"

# Get the current date and time
current_date=$(date +"%Y-%m-%d")
current_time=$(date +"%H:%M:%S")

# Print the current date and time
echo "The current date is: $current_date"
echo "The current time is: $current_time"

# Create a directory
echo "Creating a directory..."
mkdir sample_directory

# Change into the directory
cd sample_directory

# Create some files
echo "Creating files..."
touch file1.txt
touch file2.txt
touch file3.txt

# List the files in the directory
echo "Listing files..."
ls

# Print a farewell message
echo "Thank you for using the sample shell script!"

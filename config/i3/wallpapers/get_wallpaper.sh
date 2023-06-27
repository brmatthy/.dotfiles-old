#!/bin/bash

# Check if an argument was provided
if [ $# -eq 0 ]; then
  echo "Please provide a path as an argument."
  echo "Usage: ./random_file.sh <path>"
  exit 1
fi

# Check if the user requested help
if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
  echo "This script takes a path as an argument and outputs a random file from the specified directory."
  echo "Usage: ./random_file.sh <path>"
  exit 0
fi

# Store the path argument
path=$1

# Get the random file name
random_file=$(ls "$path" | sort -R | tail -1)

# Return the path appended with the random file name
echo "$path/$random_file"
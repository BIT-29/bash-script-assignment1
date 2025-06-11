#!/bin/bash

# Check if path is provided
if [ -z "$1" ]; then
  echo "Usage: $0 /absolute/path/to/directory"
  exit 1
fi

# Check if the provided path is a directory
if [ ! -d "$1" ]; then
  echo "Error: '$1' is not a directory."
  exit 1
fi

# Count and display the number of files
file_count=$(find "$1" -type f | wc -l)
echo "There are $file_count files in directory '$1'."


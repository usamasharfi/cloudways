#!/bin/bash

# Define the directory path
directory="/var"

# Define the output file
output_file="permissions_commands.sh"

# Clear the output file if it already exists
> "$output_file"

# Set all directories and files to root and desired permissions
echo "chown -R root:root \"$directory\"" >> "$output_file"
echo "chmod -R u=rwX,g=rX,o=rX \"$directory\"" >> "$output_file"
echo "" >> "$output_file"

# Find directories with ownership or permissions different from the desired settings and modify them
find "$directory" -type d \( ! -user root -o ! -group root \) -exec stat -c 'chown %U:%G "%n"' {} + >> "$output_file"
find "$directory" -type d \( ! -perm 755 \) -exec stat -c 'chmod 755 "%n"' {} + >> "$output_file"
echo "" >> "$output_file"

# Find files with ownership or permissions different from the desired settings and modify them
find "$directory" -type f \( ! -user root -o ! -group root \) -exec stat -c 'chown %U:%G "%n"' {} + >> "$output_file"
find "$directory" -type f \( ! -perm 644 \) -exec stat -c 'chmod 644 "%n"' {} + >> "$output_file"

echo "Permission commands generated in $output_file"

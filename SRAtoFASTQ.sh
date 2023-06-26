#!/bin/bash

# Function to recursively traverse folders in search of .sra files
convert_sra_to_fastq() {
    local dir=$1

    # Loop through files and folders in the current directory
    for entry in "$dir"/*; do
        if [[ -f "$entry" && "$entry" == *.sra ]]; then
            # Get the file name without the .sra extension
            filename=$(basename "$entry" .sra)

            # Execute the fastq-dump command to convert the SRA file to FASTQ
            fastq-dump -I "$entry" -O "$fastq_directory"
        elif [[ -d "$entry" ]]; then
            # If it's a directory, call the function recursively to process the directory
            convert_sra_to_fastq "$entry"
        fi
    done
}

# Root directory containing folders with SRA files
root_directory="/home/donmoretti/Desktop/ASB"

# Directory to save the converted FASTQ files
fastq_directory="/home/donmoretti/Desktop/fastq"
mkdir -p "$fastq_directory"

# Call the function to convert .sra files in all folders
convert_sra_to_fastq "$root_directory" 

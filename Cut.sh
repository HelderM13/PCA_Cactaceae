#!/bin/bash

input_folder="$1"  # Pasta de entrada fornecida como argumento
output_folder=$2  # Substitua pelo caminho da pasta de destino
desired_reads=$3  # Altere esse valor conforme necessário

for file in "$input_folder"/*.fastq; do
    base_name=$(basename "$file" .fastq)
    output_file="${output_folder}/${base_name}_cut.fastq"
    reads_count=$(expr $desired_reads \* 4)
    head -n $reads_count "$file" > "$output_file"
done

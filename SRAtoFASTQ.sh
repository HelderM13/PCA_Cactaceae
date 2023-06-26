#!/bin/bash

# Função para percorrer recursivamente as pastas em busca de arquivos .sra
convert_sra_to_fastq() {
    local dir=$1

    # Loop através dos arquivos e pastas no diretório atual
    for entry in "$dir"/*; do
        if [[ -f "$entry" && "$entry" == *.sra ]]; then
            # Obter o nome do arquivo sem a extensão .sra
            filename=$(basename "$entry" .sra)

            # Executar o comando fastq-dump para converter o arquivo SRA em FASTQ
            fastq-dump -I "$entry" -O "$fastq_directory"
        elif [[ -d "$entry" ]]; then
            # Se for um diretório, chamar a função recursivamente para processar o diretório
            convert_sra_to_fastq "$entry"
        fi
    done
}

# Diretório raiz que contém as pastas com os arquivos SRA
root_directory="/home/donmoretti/Desktop/ASB"

# Diretório para salvar os arquivos FASTQ convertidos
fastq_directory="/home/donmoretti/Desktop/fastq"
mkdir -p "$fastq_directory"

# Chamada da função para converter os arquivos .sra em todas as pastas
convert_sra_to_fastq "$root_directory" 

# PCA_Cactaceae

This project was developed as part of the "Análise de Sequencias Biológicas" (Biological Sequence Analysis) course at the Escola Superior de Tecnologia do Barreiro, Instituto Politécnico de Setúbal.

The aim of this project is to explore the potential of genome-wide RAD (Restriction-site Associated DNA) sequences for resolving rapid radiations, focusing on the Cactaceae family. The project is based on the article titled "The potential of genome-wide RAD sequences for resolving rapid radiations: a case study in Cactaceae" (link: [Article Link](https://www.sciencedirect.com/science/article/pii/S1055790320301688)).

Scripts
The repository contains various support scripts for data processing and analysis. Here is a description of some key scripts and how to use them:

Count_Reads.py: Counts the number of reads within a Fastq file. Usage: Replace the file path in the code and execute. The output will be "Number of reads: (Reads)".

Count_SNPS.py: Counts the number of SNPs within a .vcf file. Usage: Replace the file path in the code and execute. The output will be: "The file {file_name_vcf} has {num_snps} SNPs."

Cut_reads.sh: Cuts the number of reads from all Fastq files within a folder. Usage: Run "./Cut_reads.sh /home/your/input/folder/path/ /home/your/output/folder/path/ (number_of_reads)".

PCA_script.R: Performs Principal Component Analysis (PCA) in R. Usage: Replace the file paths and execute.

SRAtoFASTQ.sh: Converts .sra files to .fastq files. Usage: Replace the folder paths with your chosen folders and execute.

These scripts are intended to facilitate tasks such as data exploration, quality control, and performing PCA analysis using RAD sequencing data.

Please refer to the individual script files for more detailed instructions and requirements.

For any questions or issues, feel free to contact the repository owner.

Note: This repository is provided as-is, and the scripts are intended for research and educational purposes.

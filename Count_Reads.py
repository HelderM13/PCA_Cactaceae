def count_reads_fastq(file_path):
    line_count = 0
    read_count = 0
    
    with open(file_path, 'r') as file:
        for line in file:
            line_count += 1
            
            # Read records occur on every fourth line
            if line_count % 4 == 1:
                read_count += 1
    
    return read_count

# Provide the path to your FASTQ file
fastq_file = '/home/your/path'

# Call the function to get the read count
num_reads = count_reads_fastq(fastq_file)

print("Number of reads:", num_reads)

def contar_snps(arquivo_vcf):
    contador_snps = 0
    with open(arquivo_vcf, 'r') as arquivo:
        for linha in arquivo:
            if not linha.startswith('#'): 
                contador_snps += 1
    return contador_snps

file_name_vcf = '/home/your/path/file.vcf'
num_snps = contar_snps(file_name_vcf)
print(f'The file {file_name_vcf} have {num_snps} SNPs.')

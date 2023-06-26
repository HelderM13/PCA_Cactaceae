install.packages("BiocManager")
BiocManager::install("LEA")
BiocManager::install("pcaMethods")
install.packages("vcfR")
library(LEA)
library(pcaMethods)
library(vcfR)



geno <- LEA::read.geno("/home/path/to/your/geno.geno")

df_geno = as.data.frame(geno) 

v1_classes = factor(df_geno$V1)
genoPCAmethods = pca(df_geno, scale = "vector", center = TRUE, nPcs = 2, method = "svd")

vcf_file <- ("/home/path/to/your/vcf.vcf")
vcf <- read.vcfR(vcf_file)
populations <- vcf@gt
df_pop = as.data.frame(populations)
pop_classes = factor(df_pop$SRR11423817_cut) 
pop_file <- read.table("/home/path/to/your/popfile.txt", header = TRUE)


slplot(genoPCAmethods,
       scol=pop_file[, "pop.number"],
       scoresLoadings=c(TRUE, FALSE),
       spch=1)

print(genoPCAmethods@R2)

legend("bottomright", legend = c("A1", "A2"), pch = 1,
       col = c("black", "red")) 



setwd("/NAS2/jiaoyp/GWAS/GAPIT/")
library(multtest)
library("gplots")
library("LDheatmap")
library("genetics")
source("emma.R")
source("gapit_functions_2.22.txt")
myY <-read.table("/NAS2/lien/analysis_of_503_inbred_lines_subgenome/GWAS_for_all_the_3228_dup_genes/phenotype/pheno_for_each_gene_in_cluster_0/GRMZM2G136412-GRMZM2G149543.pheno",sep="",head = TRUE)
myGFile <- "GAPIT_RNAseq_hmp_438K_imputed-"
myGFileExt <- "hapmap"
myKI <- read.table("/NAS2/lien/analysis_of_503_inbred_lines_subgenome/GAPIT_RNAseq_hmp_438K_imputed.kinship",sep="", head = FALSE)
myCV <- read.table("/NAS2/lien/analysis_of_503_inbred_lines_subgenome/503lines.PCA",sep="", head = TRUE)
setwd("/NAS2/lien/analysis_of_503_inbred_lines_subgenome/GWAS_for_all_the_3228_dup_genes/GWAS_result/gwas_of_remained_phenotype_for_cluster_0_group/GWAS_results/GRMZM2G136412-GRMZM2G149543.pheno")
myGAPIT <- GAPIT(Y=myY,file.G=myGFile,file.Ext.G=myGFileExt,file.path="/NAS2/lien/analysis_of_503_inbred_lines_subgenome/hapmap/",file.from=1,file.to=5,,KI=myKI,CV=myCV,SNP.P3D=TRUE)

#!/usr/bin/perl -w
use strict;
my @files = <*.pheno>;
open NEW,"+>./run_step1_gener_sys_R.sh" or die;
foreach my $line(@files){
        print NEW "perl /NAS1/zeamxie/perl_scripts_GWAS/GWAS_sys_R2_2.22.pl /NAS2/jiaoyp/GWAS/GAPIT/ gapit_functions_2.22.txt /NAS2/lien/analysis_of_503_inbred_lines_subgenome/hapmap/ GAPIT_RNAseq_hmp_438K_imputed- hapmap /NAS2/lien/analysis_of_503_inbred_lines_subgenome/GAPIT_RNAseq_hmp_438K_imputed.kinship /NAS2/lien/analysis_of_503_inbred_lines_subgenome/503lines.PCA /NAS2/lien/analysis_of_503_inbred_lines_subgenome/GWAS_for_all_the_3228_dup_genes/GWAS_result/gwas_of_remained_phenotype_for_cluster_0_group/GWAS_results/$line 5 /NAS2/lien/analysis_of_503_inbred_lines_subgenome/GWAS_for_all_the_3228_dup_genes/phenotype/pheno_for_each_gene_in_cluster_0/$line > $line.R2 \n";
}
close NEW;

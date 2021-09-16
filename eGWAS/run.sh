perl /NAS2/shijp/GWAS/GWAS_zengbiao/genotype/convert_hapmap_to_jvcf.pl GAPIT_RNAseq_hmp_438K_imputed.hapmap >./GAPIT_RNAseq_hmp_438K_imputed.jvcf

perl /NAS1/zeamxie/perl_scripts_GWAS/jvcf2plink_map3.pl GAPIT_RNAseq_hmp_438K_imputed.jvcf GAPIT_RNAseq_hmp_438K_imputed.map GAPIT_RNAseq_hmp_438K_imputed.ped

/NAS2/jiaoyp/software/plink-1.07-x86_64/plink --file GAPIT_RNAseq_hmp_438K_imputed --map3 --missing-genotype N --make-bed --noweb --out GAPIT_RNAseq_hmp_438K_imputed

/NAS2/jiaoyp/software/GCTA/gcta64 --bfile GAPIT_RNAseq_hmp_438K_imputed --autosome-num 10 --autosome --make-grm --out GAPIT_RNAseq_hmp_438K_imputed

/NAS2/jiaoyp/software/GCTA/gcta64 --grm GAPIT_RNAseq_hmp_438K_imputed --pca 20 --out GAPIT_RNAseq_hmp_438K_imputed
/NAS2/jiaoyp/software/plink-1.07-x86_64/plink --file   GAPIT_RNAseq_hmp_438K_imputed  --map3 --noweb --missing-genotype N --recode12 --output-missing-genotype 0 --transpose --out GAPIT_RNAseq_hmp_438K_imputed
/NAS2/jiaoyp/software/emmax-beta-07Mar2010/emmax-kin -v -h -s -d 10  GAPIT_RNAseq_hmp_438K_imputed
perl /NAS1/zeamxie/perl_scripts_GWAS/kinship_add_inbred_name.pl GAPIT_RNAseq_hmp_438K_imputed.ped  GAPIT_RNAseq_hmp_438K_imputed.hIBS.kinf  >GAPIT_RNAseq_hmp_438K_imputed.kinship
perl /NAS2/shijp/PCA_maf0.03/PCA_bigger_than_0.03/renew_PCA_shijunpeng.pl GAPIT_RNAseq_hmp_438K_imputed.eigenvec  > 503lines.PCA

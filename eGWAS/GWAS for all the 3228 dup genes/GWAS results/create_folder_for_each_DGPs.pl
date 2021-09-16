#!/usr/bin/perl -w
use strict;
my @file=</NAS2/lien/analysis_of_503_inbred_lines_subgenome/GWAS_for_all_the_3228_dup_genes/phenotype/pheno_for_each_gene_in_cluter_0/*.pheno>;
open OUT,"+>$ARGV[0]";
foreach my $line(@file){
	my @ss=split/\//,$line;
	my $name=$ss[7];
        print "$ss[7]\n";
	print OUT "\`mkdir $name\`\n";
}
close OUT;

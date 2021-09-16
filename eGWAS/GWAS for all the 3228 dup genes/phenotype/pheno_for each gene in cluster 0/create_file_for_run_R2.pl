#!/usr/bin/perl
use strict;
my @files = <*.pheno>;
open NEW,"+>./run_step2_run_GWAS.sh" or die;
foreach my $line(@files){
        print NEW "R --vanilla --slave < $line.R2 > $line.R2.nohup \n";
}
close NEW;

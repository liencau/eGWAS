#!/usr/bin/perl
use strict;
my @files = <*.pheno>;
open NEW,"+>hist_test.R" or die;
foreach my $line(@files){
        $line =~ s/.pheno//;
        print NEW "pdf(\"$line.hist.pdf\")\ncc<-read.table(\"$line.pheno\",header=T,row.names=1,na=\"NaN\")\nhist(cc[,1],breaks=100,xlim=c(0,1),xlab=\"Ratio\",main = \"Histogram of $line\")\ndev.off()\n";
}
close NEW;

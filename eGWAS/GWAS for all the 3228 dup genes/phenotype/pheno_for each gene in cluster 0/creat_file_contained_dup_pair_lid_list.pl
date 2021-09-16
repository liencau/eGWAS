#!/usr/bin/perl
use strict;
my @files = <*.pheno>;
open NEW,"+>dup_id_for_remained_dup_in_cluster_0_correct.txt" or die;
foreach my $line(@files){
        $line =~ s/.pheno//;
	$line =~ s/-/:/;
        print NEW "$line\n";
}
close NEW;

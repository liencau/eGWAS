#!/usr/bin/perl
use strict;
die usage() if @ARGV == 0;
open NEW,"$ARGV[0]" or die;
while(<NEW>){
	chomp;
	my @array = split /\s+/;
	if(/rs/){
		print "#CHROM\tPOS\tREF\t";
		for(my $number = 11;$number < @array;$number++){
			print "$array[$number]\t";
		}
		print "\n";
	}
	else{
		print "chr$array[2]\t$array[3]\t$array[1]\t";
		for(my $number = 11;$number < @array;$number++){
			my @new = split //,$array[$number];
			print "$new[0]\t";
		}
		print "\n";
	}
}
close NEW;

sub usage{
	my $die =<<DIE;
	usage : perl *.pl *.hapmap >./*.jvcf
DIE
}

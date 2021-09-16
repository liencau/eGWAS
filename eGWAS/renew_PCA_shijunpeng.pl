#!/usr/bin/perl
use strict;
print "<Trait>\tPC1\tPC2\tPC3\n";
open NEW,"$ARGV[0]" or die;
while(<NEW>){
	chomp;
	my @array=split /\s+/;
	print "$array[1]\t$array[2]\t$array[3]\t$array[4]\n";
}
close NEW;

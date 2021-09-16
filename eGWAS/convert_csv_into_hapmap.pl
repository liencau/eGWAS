#!/usr/bin/perl -w
use strict;
die usage() unless @ARGV == 2;
my ($csv,$out) = @ARGV;

open CSV,$csv or die "$!";
open OUT,"+>$out" or die"$!";
while(<CSV>){
      chomp;
      $_ =~ s/\"//g;
      $_ =~ s/,/\t/g;
      print OUT "$_\n";
}
close CSV;
close OUT;

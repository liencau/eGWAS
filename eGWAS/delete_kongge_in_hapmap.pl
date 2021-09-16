#!/usr/bin/perl -w
use strict;

open HAP,$ARGV[0] or die "$!";
open OUT,"+>finish.hapmap" or die "$!";
while(<HAP>){
      chomp;
      my @lines = split(/\t/,$_);
      $lines[0] =~ s/\s//;
      my $raw = join("\t",@lines);
      print OUT "$raw\n";
}

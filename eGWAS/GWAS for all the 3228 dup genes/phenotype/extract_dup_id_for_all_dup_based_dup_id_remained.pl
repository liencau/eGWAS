#!/usr/bin/perl -w
use strict;

my ($dup_id,$out)= @ARGV;
open DUPID,$dup_id or die "$!";
open OUT,"+>$out" or die "$!";
my $i = 0;
while(<DUPID>){
      chomp;
      $i++;
      if ($i >= 101 ) {
          print OUT "$_\n";   
      }
     # if ($i >= 100){last;}
}

close DUPID;
close OUT;

sub usage{
    my $die=<<DIE
    perl *.pl <> <>
DIE
}

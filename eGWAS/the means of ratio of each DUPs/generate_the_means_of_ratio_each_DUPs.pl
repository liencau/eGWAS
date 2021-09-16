#!/usr/bin/perl -w
use strict;
my($in,$out)=@ARGV;
open IN,"$in";
my $head=<IN>;
open OUT,"+>$out";
while(<IN>){
	chomp;
	my @ss=split;
	my ($sum,$mean)=0;
	my $num_inbreds=@ss;
	for(my $i=1;$i<@ss;$i++){
		if($ss[$i] eq "NaN"){
			$num_inbreds--;
			next;
		}else{
			$sum+=$ss[$i];
		}
	}	
  # the miss rate less 5 percent.
	if($num_inbreds >=478){
		$mean=$sum/($num_inbreds-1);
		print OUT "$ss[0]\t$mean\n";
	}
#	print OUT "$ss[0]\t$mean\n";
}
close IN;
close OUT;

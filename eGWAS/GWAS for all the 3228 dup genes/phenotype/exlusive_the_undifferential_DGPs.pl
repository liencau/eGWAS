#!/usr/bin/perl -w
use strict;
my($in,$out)=@ARGV;
open IN,"$in" or die;
open OUT,"+>$out" or die;
my $head=<IN>;
print OUT "$head";
while(<IN>){
	chomp;
	my $line=$_;
	my @ss=split;
	my $value=$ss[1];
        my $num=0;
	for(my $i=1;$i<@ss;$i++){
		if($ss[$i]==$value || $ss[$i] eq $value){$num++;}
	}
	if($num==(@ss-1)){print "$line\n";}
	else{
	print OUT "$line\n";
	}
}
close IN;
close OUT;

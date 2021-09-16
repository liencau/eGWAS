#!/usr/bin/perl -w
use strict;
open IN,"$ARGV[0]" or die;
my($num_trans,$num_trans_sub,$num_trans_and_cis1_or_cis2,$num_trans_and_cis1_cis2,$num_cis1_and_cis2,$cis_num_sub1,$cis_num_sub2,$cis_num_upstream,$cis_num_downstream,$cis_num_genebody,$trans_num_sub1,$trans_num_sub2,$trans_num_upstream,$trans_num_downstream,$trans_num_genebody)=0;
while(<IN>){
	chomp;
	my @ss=split(/,/,$_);
	if($ss[1]eq 'trans-exist'){$num_trans++;}
	if($ss[2]eq 'tran-exist-sub'){$num_trans_sub++;}
	if($ss[1]eq 'trans-exist' && ($ss[3] eq 'sub1' || $ss[3] eq 'sub2')){$num_trans_and_cis1_or_cis2++;}
	if($ss[1]eq 'trans-exist' && $ss[5] eq 'cis1-cis2'){$num_trans_and_cis1_cis2++;}
	if(!($ss[1]eq 'trans-exist')&& $ss[5] eq 'cis1-cis2'){$num_cis1_and_cis2++;}
	if(!($ss[1]eq 'trans-exist' && !($ss[5] eq 'cis1-cis2'))){
	  if($ss[3] eq 'sub1'){$cis_num_sub1++;}
	  if($ss[3] eq 'sub2'){$cis_num_sub2++;}
	  if($ss[3] eq 'sub1' || $ss[3] eq 'sub2'){
	   if($ss[4] eq 'upstream'){$cis_num_upstream++;}
	   if($ss[4] eq 'downstream'){$cis_num_downstream++;}
 	   if($ss[4] eq 'genebody'){$cis_num_genebody++;}
          }
        }
        if($ss[1]eq 'trans-exist' && !($ss[5] eq 'cis1-cis2')){
         if($ss[3] eq 'sub1'){$trans_num_sub1++;}
          if($ss[3] eq 'sub2'){$trans_num_sub2++;}
          if($ss[3] eq 'sub1' || $ss[3] eq 'sub2'){
           if($ss[4] eq 'upstream'){$trans_num_upstream++;}
           if($ss[4] eq 'downstream'){$trans_num_downstream++;}
           if($ss[4] eq 'genebody'){$trans_num_genebody++;}
          }
        }
}
print "num_trans-$num_trans\nnum_trans_sub-$num_trans_sub\nnum_trans_and_cis1_or_cis2-$num_trans_and_cis1_or_cis2\nnum_trans_and_cis1_cis2-$num_trans_and_cis1_cis2\nnum_cis1_and_cis2-$num_cis1_and_cis2\ncis_num_sub1-$cis_num_sub1\ncis_num_sub2-$cis_num_sub2\ncis_num_upstream-$cis_num_upstream\ncis_num_downstream-$cis_num_downstream\ncis_num_genebody-$cis_num_genebody\ntrans_num_sub1-$trans_num_sub1\ntrans_num_sub2-$trans_num_sub2\ntrans_num_upstream-$trans_num_upstream\ntrans_num_downstream-$trans_num_downstream\ntrans_num_genebody-$trans_num_genebody\n";
close IN;

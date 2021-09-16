#!/usr/bin/perl -w
use strict;
die usage() unless @ARGV ==2;
my ($dup,$gene_id) = @ARGV;

open GEID,$gene_id or die "$!";
my @id_gene = <GEID>;
chomp @id_gene;
foreach my $name(@id_gene){
        open DUP,$dup or die "$!";
        my $inbred = <DUP>;
        my @inbred = split(/\s+/,$inbred);
        my $inb_num = @inbred -1;
        $inbred[0] =~ s/dup_pair/Taxa/;
        while(<DUP>){
            chomp;
	    #print "$_\n";
            if(/$name/){
               my @exp = split(/\s+/,$_);
               $exp[0] =~ s/:/-/;
               open OUT,"+>./$exp[0].pheno";
               for(my $i = 0;$i <= $inb_num;$i ++){
                  # if($i!=1){
                      $exp[$i] = 'NaN' if $exp[$i] eq "-";
                      print  OUT "$inbred[$i]\t$exp[$i]\n";
                  # }
              }
              close OUT;
              last;
           }
      }
      close DUP; 
}

close GEID;
sub usage{
    print <<DIE;
    perl *.pl <dup_pair> <gene_ID>
DIE
   exit 1;
}

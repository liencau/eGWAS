#!/usr/bin/perl -w
use strict;

open HAP,$ARGV[0] or die "$!";
open NHAP,"+>$ARGV[1]" or die "$!";
my $header = <HAP>;
chomp $header;
my @snps = <HAP>;
my ($rs,$all,$chr,$pos,$strand,$ass,$cen,$pro,$assay,$pan,$Qcc,@inbreds) = split(/\t/,$header);
for(my $i =0;$i < @inbreds;$i++){
        $inbreds[$i] =~ tr/a-z/A-Z/;
        $inbreds[$i] =~ tr/\s/-/;
}
my $newhead = join("\t", $rs,$all,$chr,$pos,$strand,$ass,$cen,$pro,$assay,$pan,$Qcc,@inbreds);
print NHAP "$newhead\n";
print NHAP "@snps";
close HAP;
close NHAP;

sub usage{
    my $die =<<DIE;
    perl *.pl <raw_small.hapmap> <new_large.hapmap>
DIE
}

#!/usr/bin/perl -w

#Estimated protein half life based on N-end rule

use strict;
use warnings;

unless($#ARGV==0){
	print "USAGE: perl HalfLife.pl sequence.fasta\n";
	exit;
}
open IN, $ARGV[0];
$/ = "\n>";
while(<IN>){
	s/>//g;
	my($id, @seq) = split(/\n/, $_);
	my $lineSeq = join "", @seq;
	my $res1 = substr($lineSeq, 0, 1);
	print "\n\nProtein estimated half life is (mammalian-in vitro  yeast-in vivo  E.coli-in vivo):\n\n";
	if($res1 eq 'A'){
	print "mammalian 4.4 hours\nyeast >20 hours\nE.coli >10 hours\n";
	}elsif($res1 eq 'R'){
	print "mammalian 1 hour\nyeast 2 min\nE.coli 2 min\n";
	}elsif($res1 eq 'N'){
	print "mammalian 1.4 hours\nyeast >3 min\nE.coli >10 hours\n";
	}elsif($res1 eq 'D'){
        print "mammalian 1.1 hours\nyeast >3 min\nE.coli >10 hours\n";
	}elsif($res1 eq 'C'){
        print "mammalian >1.2 hours\nyeast >20 hours\nE.coli >10 hours\n";
        }elsif($res1 eq 'E'){
        print "mammalian >1 hour\nyeast 30 min\nE.coli >10 hours\n";
        }elsif($res1 eq 'Q'){
        print "mammalian >0.8 hours\nyeast 10 min\nE.coli >10 hours\n";
        }elsif($res1 eq 'G'){
        print "mammalian 30 hours\nyeast >20 hours\nE.coli >10 hours\n";
        }elsif($res1 eq 'H'){
        print "mammalian 3.5 hours\nyeast >10 min\nE.coli >10 hours\n";
        }elsif($res1 eq 'I'){
        print "mammalian 20 hours\nyeast 30 min\nE.coli >10 hours\n";
        }elsif($res1 eq 'L'){
        print "mammalian 5.5 hours\nyeast 3 min\nE.coli 2 min\n";
        }elsif($res1 eq 'K'){
        print "mammalian 1.3 hours\nyeast 3 min\nE.coli 2 min\n";
        }elsif($res1 eq 'M'){
        print "mammalian 30 hours\nyeast >20 hours\nE.coli >10 hours\n";
        }elsif($res1 eq 'F'){
        print "mammalian >1.1 hours\nyeast 3 min\nE.coli 2 min\n";
        }elsif($res1 eq 'P'){
        print "mammalian >20 hours\nyeast >20 hours\nE.coli No information available\n";
        }elsif($res1 eq 'S'){
        print "mammalian 1.9 hours\nyeast >20 hours\nE.coli >10 hours\n";
        }elsif($res1 eq 'T'){
        print "mammalian >7.2 hours\nyeast >20 hours\nE.coli >10 hours\n";
        }elsif($res1 eq 'W'){
        print "mammalian 2.8 hours\nyeast 3 min\nE.coli 2 min\n";
        }elsif($res1 eq 'Y'){
        print "mammalian 2.8 hours\nyeast 10 min\nE.coli 2 min\n";
        }elsif($res1 eq 'V'){
        print "mammalian 100 hours\nyeast >20 hours\nE.coli >10 hours\n";
        }else{print "N-terminally modified protein\n";}
}

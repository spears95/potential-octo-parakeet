#!/usr/bin/perl
# Author: Cheol Ho Lim in MSC GmbH.

use strict;
use warnings;
use diagnostics;

use Cwd;
use Path::Tiny;
use autodie; # die if problem reading or writing a file

#my $dir = path("C:/Users/Cheol Ho Lim/Documents/MAKE"); # ./
my $dir = path("./"); 
my $dir_make = path("./");

my $file_rd = $dir->child("build.log");
my $file_wr = $dir_make->child("makefile");

# openr_utf8() returns an IO::File object to read from
# with a UTF-8 decoding layer
my $file_rd_handle = $file_rd->openr_utf8();

my $i = 0;

# Read in line at a time
#while( my $line = $file_rd_handle->getline() ) {
#
#	#print $line;
#	# C:\Users\z248330\AppData\Local\Temp\make01000.rsp
#	if( $line =~ m{C:\\Users\\z} ) {
#		#print $line;	
#	}
#	
#	if( $line =~ m{C:\\Users\\[zZ]\d{6}\\AppData\\Local\\Temp\\make\d{5}.rsp} ) {
#		print "1: "; print $line;	
#		$line =~ s{C:\\Users\\[zZ]\d{6}\\AppData\\Local\\Temp\\make\d{5}.rsp}{temp_rte.rsp}g;
#		print "2: "; print $line;
#	} 
#
#}

print "*********************\n";
my $dir_temp = getcwd;
print $dir_temp;
print "\n";

# remove all but the first 1 character.
$dir_temp = substr($dir_temp, 0, 1);
print $dir_temp;
my $abc = "abc";
$abc =~ s{a}{$dir_temp}g;
print $abc;

print "\n";
my $sample = "C:\\Users\\Z605168\\AppData\\Local\\Temp\\make00000.rsp";
print $sample; 
print "\n";
$sample =~ s{C:\\Users\\[A-Z|a-z]\d{6}\\AppData\\Local\\Temp\\make\d{5}.rsp}{DONE.rsp}g;
print $sample;
print "\n";

# close file handle at the end
close $file_rd_handle

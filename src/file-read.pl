#!/usr/bin/perl

# Strict and warnings are recommended.
use strict;
use warnings;

# Read the file that is passed in as an argument to the program

# (1) quit unless we have the correct number of command-line args
my $num_args = $#ARGV + 1;
if ($num_args != 1) {
    print "\nUsage: file-read.pl <file-name-to-read>\n";
    exit -1;
}

# file should have relative path w.r.t where the script is being invoked from
my $filename = $ARGV[0];
print "Trying to read file: $filename\n";

open(FH, '<', $filename) or die "Could not open file '$filename' $!";

while(<FH>)
{
  print $_;
}

close(FH);

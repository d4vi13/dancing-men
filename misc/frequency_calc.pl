#!/bin/perl
use strict;
use warnings;

my $cipher = lc "JGRMQOYGHMVBJWRWQFPWHGFFDQGFPFZRKBEEBJIZQQOCIBZKLFAFGQVFZFWWE OGWOPFGFHWOLPHLRLOLFDMFGQWBLWBWQOLKFWBYLBLYLFSFLJGRMQBOLWJVFP FWQVHQWFFPQOQVFPQOCFPOGFWFJIGFQVHLHLROQVFGWJVFPFOLFHGQVQVFILE OGQILHQFQGIQVVOSFAFGBWQVHQWIJVWJVFPFWHGFIWIHZZRQGBABHZQOCGFHX";

my %count;

for (split //, $cipher) {
  next if $_ eq ' ';
  $count{$_}++; 
}

my %frequency;

foreach (keys %count) {
  $frequency{$_} = $count{$_} / length $cipher; 
}

foreach (sort keys %frequency) {
  print "$_ = $frequency{$_}\n";
}

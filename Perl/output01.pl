#!/usr/local/bin/perl

open my $TLE_fh, '<', '../TLEs/all.txt' or die "Could not open all.txt: $!";

$count = 1;
while( <$TLE_fh> ) {
	$mod = $count % 3;
	if ($mod == 1) {
		print $_;
	}
	$count++;
}
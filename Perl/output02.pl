#!/usr/local/bin/perl

open my $TLE_fh, '<', '../TLEs/all.txt' or die "Could not open all.txt: $!";

@thelines = <$TLE_fh>;

$count = 1;

foreach $thisline(@thelines) {
	if ($count % 3 == 1) {
		print $thisline;
	}
	$count++;
}

print "All done!";
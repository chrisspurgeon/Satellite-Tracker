#!/usr/local/bin/perl

open my $TLE_fh, '<', '../TLEs/all.txt' or die "Could not open all.txt: $!";

@thelines = <$TLE_fh>;


for ($i = 0; $i <= $#thelines; $i = $i + 3) {
	$line1 = $thelines[$i];
	chomp($line1);
	$line2 = $thelines[$i + 1];
	$satName = substr($line2, 2, 6);
	$line3 = $thelines[$i + 2];
	print $line1;
	print "-";
	print $satName;
	print "\n";
	print $line2;
	print $line3;
}


print "All done!";
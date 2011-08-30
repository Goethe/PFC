#!/usr/bin/env perl
use diagnostics;
use strict;
use File::Copy;

my $ec = 1;	# $ec stands for "end figure count", $li stands for "line
		# index", $lv stands for "line value".
my (@cp, @fep);	# @cp stands for "clearpage position", @fep stands for
		# "fourth end figure position".
for my $filename ( @ARGV ) {
    open FILE, '<', $filename
	or die "Can't open '$filename': $!";
    chomp( my @lines = <FILE> );
    close FILE;

    for( 0..$#lines ) {
	push @cp, $_
	    if $lines[$_] =~ /clearpage/;
    }
    $cp[$_] -= 2*$_ for 0..$#cp;
    splice @lines, $_, 2 for @cp;

    for( 0..$#lines ) {
	if( $lines[$_] =~ /^.end.figure/ and $ec == 4 ) {
	    push @fep, $_;
	    $ec = 1;
	} elsif ( $lines[$_] =~ /^.end.figure/ ) {
	    ++$ec;
	}
    }
    my $ct = "\n\\clearpage";
    $fep[$_] += $_ + 1 for 0..$#fep;
    for (@fep) {
	my @remaining = splice @lines, $_;
	push @lines, $ct;
	push @lines, @remaining;
    }

    my $new_filename = $filename . "~";
    move $filename, $new_filename
	or die "Can't move '$filename' onto '$new_filename': $!";
    open FILE, '>', $filename
	or die "Can't open '$filename': $!";
    print FILE "$_\n" for @lines;
}

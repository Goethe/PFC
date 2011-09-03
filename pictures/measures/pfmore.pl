#!/usr/bin/env perl
use diagnostics;
use strict;

my @files_subset;

my $file_number = shift @ARGV;

my $skeleton = shift @ARGV;
open FILEIN, '<', $skeleton or die "Can't open skeleton: $!";
my @first = <FILEIN>;
my $last = pop @first;
close FILEIN;

my @splitted_filename = (split /\./, (shift @ARGV));
splice @splitted_filename, 1, 0, qw/ dummy dummy . /;

sub write_pattern {

    splice @splitted_filename, 1, 2, ("-", shift @_);
    my $filename = join '', @splitted_filename;
    $filename =~ s/-(\d)\./-0$1./;

    if( -e $filename ){
	rename $filename, $filename . '~' or die "Can't rename: $!";
    }
    open FILEOUT, '>', $filename or die "Can't open $filename: $!";
    select FILEOUT;

    print @first;

    my $count = 0;
    my $figure = 0;

    my @blockfirst = (
	"",
	"pen l[];",
	"l0 = pencircle scaled 0.15u;",
	"l1 = pencircle scaled 0.25u;",
	"l2 = pencircle scaled 0.35u;",
	"l3 = pencircle scaled 0.5u;",
	"",
	"pickup l1",
	"",
	"\tdraw begingraph (wi, he02);"
    );

    my @blocklast = (
	"\t\tglabel.bot(btex \$t [\\text{s}]\$ etex, OUT);",
	"\t\tglabel.lft(btex \$x(t) [\\text{V}]\$ etex, OUT);",
	"\tendgraph;",
	"endfig;",
	"",
	""
    );

    for my $datafile ( @_ ) {
	if ( $count == 0 ) {
	    $figure++;
	    shift @blockfirst;
	    unshift @blockfirst, "beginfig ($figure)";
	    print "$_\n" for @blockfirst;
	}
	print "\t\tgdraw \"$datafile\" withpen l2;\n";
	$count++;
	if ( $count == 4 ) {
	    print "$_\n" for @blocklast;
	    $count = 0;
	}
    }

    print $last;

}

my $while_count = 0;

while ( @ARGV ) {
    @files_subset = splice @ARGV, 0, $file_number * 4;
    $while_count++;
    write_pattern($while_count, @files_subset);
}

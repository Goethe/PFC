#!/usr/bin/env perl
use diagnostics;
use strict;

my $count = 0;
my $figure = 0;
my $label;

my $skeleton = shift @ARGV;
open FILEIN, '<', $skeleton or die "Can't open skeleton: $!";
my @first = <FILEIN>;
close FILEIN;

my $filename = shift @ARGV;
if( -e $filename ) {
    rename $filename, $filename . '~' or die "Can't rename: $!";
}
open FILEOUT, '>', $filename or die "Can't open $filename: $!";
select FILEOUT;

my $last = pop @first;
print @first;

my @blockfirst = (
    "\\begin{figure}",
    "\t\\begin{center}"
);

my @blockmed = (
    "\t\\end{center}",
    "\t\\caption{Gráfico de resultados}",
    ""
);

my @blocklast = (
    "\\end{figure}",
    ""
);

for my $picturefile ( @ARGV ) {
    ($label = $picturefile) =~ s/\..*$//;
    pop @blockmed;
    push @blockmed, "\t\\label{fig:$label}";
    print "$_\n" for @blockfirst;
    print "\t\t\\includegraphics{$picturefile}\n";
    print "$_\n" for @blockmed;
    print "$_\n" for @blocklast;
}

print $last;

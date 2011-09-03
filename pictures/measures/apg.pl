#!/usr/bin/env perl

use strict;
use diagnostics;

my $program = "mpost";
for ( @ARGV ){
    system ($program, $_) or warn "Die fetcher, mpost sucker: $!";
    print "$?\n";
}

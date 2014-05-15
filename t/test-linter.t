#!/usr/bin/perl

use strict;
use warnings;
use Test::More;
use Test::Linter;
use FindBin qw/$Bin/;

lint_dir();

done_testing();

sub lint_dir {
    test_linter(
        search_dir => "$Bin/data",
    );
}


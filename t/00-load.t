#!/usr/bin/perl

use strict;
use warnings;
use Test::More;
use Test::Warnings;

BEGIN {
    use_ok( 'Test::Linter' );
}

diag( "Testing Test::Linter $Test::Linter::VERSION, Perl $], $^X" );
done_testing();

#!perl -T
use 5.014;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Bio::SeqWare::Db::Butler' ) || print "Bail out!\n";
}

diag( "Testing Bio::SeqWare::Db::Butler $Bio::SeqWare::Db::Butler::VERSION, Perl $], $^X" );

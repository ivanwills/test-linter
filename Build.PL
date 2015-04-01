use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'Test::Linter',
    license           => 'perl',
    dist_author       => 'Ivan Wills <ivan.wills@gmail.com>',
    dist_version_from => 'lib/Test/Linter.pm',
    requires          => {
        'perl'             => 5.008,
    },
    build_requires => {
        'Test::More'       => '0.88',
        'Test::NoWarnings' => 0,
    },
    add_to_cleanup     => [ 'Test-Linter-*' ],
    create_makefile_pl => 'traditional',
    create_license     => 1,
    meta_merge => {
        resources => {
            repository => 'git://github.com/ivanwills/Test-Linter.git',
            bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Test::Linter',
        },
    },
);

$builder->create_build_script();

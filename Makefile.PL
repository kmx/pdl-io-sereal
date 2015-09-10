use strict;
use warnings;
use ExtUtils::MakeMaker;
 
WriteMakefile(
  NAME          => 'PDL::IO::Sereal',
  VERSION_FROM  => 'lib/PDL/IO/Sereal.pm',
  AUTHOR        => 'KMX <kmx@cpan.org>',
  ABSTRACT_FROM => 'lib/PDL/IO/Sereal.pm',
  LICENSE       => 'perl',
  PREREQ_PM => {
        'PDL'          => 0,
        'Sereal'       => 0,
  },
  BUILD_REQUIRES => {
        'PDL'          => 0,
        'Sereal'       => 0,
        'Test::More'   => 0,
  },
  META_MERGE => {
      resources    => {
          repository   => 'https://github.com/kmx/pdl-io-sereal',
      },
  },
  dist => {
      ($^O eq 'MSWin32' ? (TAR => 'ptar', TARFLAGS => '-c -C -f') : ()),
      PREOP => 'perldoc -u lib/PDL/IO/Sereal.pm | pod2markdown > README.md',
  },
);

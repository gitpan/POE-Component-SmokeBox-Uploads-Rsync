
use strict;
use warnings;

BEGIN { require 5.006; }

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Obtain uploaded CPAN modules via rsync',
  'AUTHOR' => 'Apocalypse <APOCAL@cpan.org>',
  'BUILD_REQUIRES' => {
    'File::Find' => '0',
    'File::Temp' => '0',
    'ExtUtils::MakeMaker' => '6.31',
    'Test::More' => '0.88'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'POE-Component-SmokeBox-Uploads-Rsync',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'POE::Component::SmokeBox::Uploads::Rsync',
  'PREREQ_PM' => {
    'File::Rsync' => '0.38',
    'File::Spec' => '0',
    'POE' => '0',
    'POE::Component::Generic' => '0',
    'POE::Session::AttributeBased' => '0',
    'parent' => '0'
  },
  'VERSION' => '1.000',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);




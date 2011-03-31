
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'File::Find' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'Test::More' => '0.88'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Obtain uploaded CPAN modules via rsync',
  'dist_author' => [
    'Apocalypse <APOCAL@cpan.org>'
  ],
  'dist_name' => 'POE-Component-SmokeBox-Uploads-Rsync',
  'dist_version' => '1.000',
  'license' => 'perl',
  'module_name' => 'POE::Component::SmokeBox::Uploads::Rsync',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'File::Rsync' => '0.38',
    'File::Spec' => '0',
    'POE' => '0',
    'POE::Component::Generic' => '0',
    'POE::Session::AttributeBased' => '0',
    'parent' => '0',
    'perl' => '5.006'
  },
  'script_files' => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;

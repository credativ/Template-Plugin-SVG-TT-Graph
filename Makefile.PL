#!/usr/bin/perl -w                                         # -*- perl -*-

use strict;

use ExtUtils::MakeMaker;
    
my %opts = (
    'NAME'         => 'Template::SVG::TT::Graph',
    'VERSION_FROM' => 'lib/Template/Plugin/SVG/TT/Graph.pm',
    'PMLIBDIRS'    => [ 'lib' ],
    'PREREQ_PM'    => {
        'Template' => 2.14,
        'SVG::TT::Graph'       => 0,
    },
    dist         => {
        PREOP => 'pod2text lib/Template/Plugin/SVG.pm > README',
        COMPRESS => 'gzip',
        SUFFIX   => 'gz',
    },
    AUTHOR    => 'Alexander Wirt <formorer@formorer.de>',
    ABSTRACT    => 'SVG::TT::Graph plugins for the Template Toolkit'

);

WriteMakefile( %opts );


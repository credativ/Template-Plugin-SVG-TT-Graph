package Template::Plugin::SVG::TT::Graph::Bar;

use strict;
use warnings;
use base qw( Template::Plugin::SVG::TT::Graph Template::Plugin );
use SVG::TT::Graph::Bar;

our $VERSION = 0.0;

sub new {
    my $class   = shift;
    my $context = shift;
    my $options = shift;
    my $graph = SVG::TT::Graph::Bar->new($options);
    my $self->{graph} = $graph;
    bless $self, $class;
}

1;

__END__

=head1 NAME

Template::Plugin::SVG::TT::Graph::Bar - create SVG::TT::Graph::Bar graphs in the Template Toolkit

=head1 DESCRIPTION

This module can create SVG Graphs in the Template toolkit

=head1 SYNOPSIS

[% cols = [ 'Jan', 'Feb', 'Mar' ] -%]

[% data = [ 12, 45, 21 ] -%]

[% USE graph = SVG.TT.Graph.Bar ( { 
    'height' => '500',
    'width'  => '300',
    'fields' => cols
     }   
) -%] 

[% graph.add_data({ 'data'  => data, 'title' => 'Sales 2002' }) -%] 

[% graph.burn %]

=head1 USING THE MODULE

For all available options and methods see SVG::TT::Graph::Bar. 
All configuaration options expections a coderef are not supported. 

If you want to use this in data URLs (RFC 2397) you can use burn_as_base64 to get the svg base64 encoded.

=head1 AUTHOR

Copyright (c) 2012 Alexander Wirt <alexander.wirt@credativ.de>

This module is free software; you can redistribute it or modify it under
the same terms as Perl itself.

# vim: expandtab shiftwidth=4:

package Template::Plugin::SVG::TT::Graph::XY;

use strict;
use warnings;
use base qw( Template::Plugin::SVG::TT::Graph Template::Plugin );
use SVG::TT::Graph::XY;

sub new {
    my $class   = shift;
    my $context = shift;
    my $options = shift;
    my $graph = SVG::TT::Graph::XY->new($options);
    my $self->{graph} = $graph;
    bless $self, $class;
}

sub rollover_values {
    my $self = shift;
    my $rc = $self->{graph}->rollover_values(@_);
    return @_ ? undef : $rc;
}

sub show_data_points {
    my $self = shift;
    my $rc = $self->{graph}->show_data_points(@_);
    return @_ ? undef : $rc;
}

sub data_value_format {
    my $self = shift;
    my $rc = $self->{graph}->data_value_format(@_);
    return @_ ? undef : $rc;
}

sub max_x_span {
    my $self = shift;
    my $rc = $self->{graph}->max_x_span(@_);
    return @_ ? undef : $rc;
}

sub stacked {
    my $self = shift;
    my $rc = $self->{graph}->stacked(@_);
    return @_ ? undef : $rc;
}

sub min_yscale_value {
    my $self = shift;
    my $rc = $self->{graph}->min_yscale_value(@_);
    return @_ ? undef : $rc;
}

sub max_yscale_value {
    my $self = shift;
    my $rc = $self->{graph}->max_yscale_value(@_);
    return @_ ? undef : $rc;
}

sub yscale_divisions {
    my $self = shift;
    my $rc = $self->{graph}->yscale_divisions(@_);
    return @_ ? undef : $rc;
}

sub min_xscale_value {
    my $self = shift;
    my $rc = $self->{graph}->min_xscale_value(@_);
    return @_ ? undef : $rc;
}

sub max_xscale_value {
    my $self = shift;
    my $rc = $self->{graph}->max_xscale_value(@_);
    return @_ ? undef : $rc;
}


1;

__END__

=head1 NAME

Template::Plugin::SVG::TT::Graph::XY - create SVG::TT::Graph::XY graphs in the Template Toolkit

=head1 DESCRIPTION

This module can create SVG Graphs in the Template toolkit

=head1 SYNOPSIS

[% data = [ 0.3, 23, 0.5, 54, 1.0, 67, 1.8, 12 ] -%]
[% data2 = [ 0.45, 12, 0.51, 26, 0.53, 23 ] -%]

[% USE graph = SVG.TT.Graph.XY ( { 
    'height' => '500',
    'width'  => '300',
     }   
) -%] 

[% graph.add_data({ 'data'  => data, 'title' => 'Sales 2002' }) -%] 
[% graph.add_data({ 'data'  => data2, 'title' => 'Sales 2003' }) -%]

[% graph.burn %]

=head1 USING THE MODULE

For all available options and methods see SVG::TT::Graph::XY. 
All configuaration options expections a coderef are not supported. 

If you want to use this in data URLs (RFC 2397) you can use burn_as_base64 to get the svg base64 encoded.

=head1 AUTHOR

Copyright (c) 2012 Alexander Wirt <alexander.wirt@credativ.de>

This module is free software; you can redistribute it or modify it under
the same terms as Perl itself.

# vim: expandtab shiftwidth=4:

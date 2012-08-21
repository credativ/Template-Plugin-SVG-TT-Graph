package Template::Plugin::SVG::TT::Graph::Pie;

use strict;
use warnings;
use base qw( Template::Plugin::SVG::TT::Graph Template::Plugin );
use SVG::TT::Graph::Pie;

sub new {
    my $class   = shift;
    my $context = shift;
    my $options = shift;
    my $graph = SVG::TT::Graph::Pie->new($options);
    my $self->{graph} = $graph;
    bless $self, $class;
}

sub style_sheet_field_names {
    my $self = shift;
    my $rc = $self->{graph}->style_sheet_field_names(@_);
    return @_ ? undef : $rc;
}

sub show_shadow {
    my $self = shift;
    my $rc = $self->{graph}->show_shadow(@_);
    return @_ ? undef : $rc;
}

sub show_shadow_size {
    my $self = shift;
    my $rc = $self->{graph}->show_shadow_size(@_);
    return @_ ? undef : $rc;
}

sub shadow_offset {
    my $self = shift;
    my $rc = $self->{graph}->shadow_offset(@_);
    return @_ ? undef : $rc;
}

sub show_data_labels {
    my $self = shift;
    my $rc = $self->{graph}->show_data_labels(@_);
    return @_ ? undef : $rc;
}

sub show_actual_values {
    my $self = shift;
    my $rc = $self->{graph}->show_actual_values(@_);
    return @_ ? undef : $rc;
}

sub show_percent{
    my $self = shift;
    my $rc = $self->{graph}->show_percent(@_);
    return @_ ? undef : $rc;
}

sub show_key_percent {
    my $self = shift;
    my $rc = $self->{graph}->show_key_percent(@_);
    return @_ ? undef : $rc;
}

sub show_key_data_labels {
    my $self = shift;
    my $rc = $self->{graph}->show_key_data_labels(@_);
    return @_ ? undef : $rc;
}
  
sub rollover_values {
    my $self = shift;
    my $rc = $self->{graph}->rollover_values(@_);
    return @_ ? undef : $rc;
}
  
sub show_key_actual_values {
    my $self = shift;
    my $rc = $self->{graph}->show_key_actual_values(@_);
    return @_ ? undef : $rc;
}
  
sub expanded {
    my $self = shift;
    my $rc = $self->{graph}->expaned(@_);
    return @_ ? undef : $rc;
}

sub expand_greatest {
    my $self = shift;
    my $rc = $self->{graph}->expand_greatest(@_);
    return @_ ? undef : $rc;
}

1;

__END__

=head1 NAME

Template::Plugin::SVG::TT::Graph::Pie - create SVG::TT::Graph::Pie graphs in the Template Toolkit

=head1 DESCRIPTION

This module can create SVG Graphs in the Template toolkit

=head1 SYNOPSIS

[% cols = [ 'Jan', 'Feb', 'Mar' ] -%]

[% data = [ 12, 45, 21 ] -%]

[% USE graph = SVG.TT.Graph.Pie ( { 
    'height' => '500',
    'width'  => '300',
     }   
) -%] 

[% graph.add_data({ 'data'  => data, 'title' => 'Sales 2002' }) -%] 

[% graph.burn %]

=head1 USING THE MODULE

For all available options and methods see SVG::TT::Graph::TimeSeries. 
All configuaration options expections a coderef are not supported. 

If you want to use this in data URLs (RFC 2397) you can use burn_as_base64 to get the svg base64 encoded.

=head1 AUTHOR

Copyright (c) 2012 Alexander Wirt <alexander.wirt@credativ.de>

This module is free software; you can redistribute it or modify it under
the same terms as Perl itself.

# vim: expandtab shiftwidth=4:

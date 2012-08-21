package Template::Plugin::SVG::TT::Graph::TimeSeries;

use strict;
use warnings;
use base qw( Template::Plugin::SVG::TT::Graph Template::Plugin );
use SVG::TT::Graph::TimeSeries;

sub new {
    my $class   = shift;
    my $context = shift;
    my $options = shift;
    my $graph = SVG::TT::Graph::TimeSeries->new($options);
    my $self->{graph} = $graph;
    bless $self, $class;
}

sub show_data_points {
    my $self = shift;
    my $rc = $self->{graph}->show_data_point(@_);
    return @_ ? undef : $rc;
}

sub rollover_values {
    my $self = shift;
    my $rc = $self->{graph}->rollover_values(@_);
    return @_ ? undef : $rc;
}

sub data_value_format {
    my $self = shift;
    my $rc = $self->{graph}->data_value_format(@_);
    return @_ ? undef : $rc;
}   

sub max_time_span {
    my $self = shift;
    my $rc = $self->{graph}->max_time_span(@_);
    return @_ ? undef : $rc;
}

sub stacked {
    my $self = shift;
    my $rc = $self->{graph}->stacked(@_);
    return @_ ? undef : $rc;
}

sub timescale_divisions {
    my $self = shift;
    my $rc = $self->{graph}->timescale_divisions(@_);
    return @_ ? undef : $rc;
}

sub min_timescale_value {
    my $self = shift;
    my $rc = $self->{graph}->min_timescale_value(@_);
    return @_ ? undef : $rc;
}

sub max_timescale_value {
    my $self = shift;
    my $rc = $self->{graph}->max_timescale_value(@_);
    return @_ ? undef : $rc;
}


1;

__END__

=head1 NAME

Template::Plugin::SVG::TT::Graph::TimeSeries - create SVG::TT::Graph::TimeSeries graphs in the Template Toolkit#

=head1 DESCRIPTION

This module can create SVG Graphs in the Template toolkit

=head1 SYNOPSIS

[% data = [ '2003-09-03 09:30:00',23,'2003-09-03 09:45:00',54,'2003-09-03 10:00:00',67,'2003-09-03 10:15:00',12 ] -%] 

[% USE graph = SVG.TT.Graph.TimeSeries ( { 
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

=cut

# vim: expandtab shiftwidth=4:

package Template::Plugin::SVG::TT::Graph::BarLine;

use strict;
use warnings;
use base qw( Template::Plugin::SVG::TT::Graph Template::Plugin );
use SVG::TT::Graph::BarLine;

sub new {
    my $class   = shift;
    my $context = shift;
    my $options = shift;
    my $graph = SVG::TT::Graph::BarLine->new($options);
    my $self->{graph} = $graph;
    bless $self, $class;
}

sub bar_gap {
        my $self = shift;
        my $rc = $self->{graph}->bar_gap(@_);
        return @_ ? undef : $rc;
}

sub show_secondary_y_labels {
        my $self = shift;
        my $rc = $self->{graph}->show_secondary_y_labels(@_);
        return @_ ? undef : $rc;
}

sub show_secondary_y_title {
        my $self = shift;
        my $rc = $self->{graph}->show_secondary_y_title(@_);
        return @_ ? undef : $rc;
}

sub y_title_text_direction {
    my $self = shift;
    my $rc = $self->{graph}->y_title_text_direction(@_);
    return @_ ? undef : $rc;
}

sub secondary_y_title_text_direction {
    my $self = shift;
    my $rc = $self->{graph}->secondary_y_title_text_direction(@_);
    return @_ ? undef : $rc;
}

sub secondary_y_title {
    my $self = shift;
    my $rc = $self->{graph}->secondary_y_title_text_direction(@_);
    return @_ ? undef : $rc;
}

1;

__END__

=head1 NAME

Template::Plugin::SVG::TT::Graph::BarLine - create SVG::TT::Graph::BarLine graphs in the Template Toolkit

=head1 DESCRIPTION

This module can create SVG Graphs in the Template toolkit

=head1 SYNOPSIS

 [% cols = [ 'Jan', 'Feb', 'Mar' ] -%]
 [% data = [ 12, 45, 21 ] -%]
 [% data2 = [ 24, 55, 61 ] -%]
 [% USE graph = SVG.TT.Graph.BarLine ( {
     'height' => '500',
     'width'  => '300',
     'fields' => cols }
 ) -%]
 [% graph.add_data({ 'data'  => data, 'title' => 'Sales 2002' }) -%]
 [% graph.add_data({ 'data'  => data2, 'title' => 'Sales 2003' }) -%]
 [% graph.burn %]

=head1 USING THE MODULE

For all available options and methods see SVG::TT::Graph::BarLine. 
All configuaration options expections a coderef are not supported. 

If you want to use this in data URLs (RFC 2397) you can use burn_as_base64 to get the svg base64 encoded.

=head1 AUTHOR

Copyright (c) 2012 Alexander Wirt <alexander.wirt@credativ.de>

This module is free software; you can redistribute it or modify it under
the same terms as Perl itself.

# vim: expandtab shiftwidth=4:

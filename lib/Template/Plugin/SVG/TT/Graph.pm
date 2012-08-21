package Template::Plugin::SVG::TT::Graph;

use strict;
use warnings;

use MIME::Base64 ();

our $VERSION = '0.0.1';

sub add_data {
    my $self = shift;
    $self->{graph}->add_data(@_);
    return;
}

sub clear_data {
    my $self = shift;
    $self->{graph}->clear_data(@_);
    return;
}

sub height {
    my $self = shift;
    my $rc = $self->{graph}->height(@_);
    return @_ ? undef : $rc;
}

sub compress {
    my $self = shift;
    my $rc =  $self->{graph}->compress(@_);
    return @_ ? undef : $rc;
}

sub tidy {
    my $self = shift;
    my $rc = $self->{graph}->tidy(@_);
    return @_ ? undef : $rc;
}

sub style_sheet {
    my $self = shift;
    my $rc = $self->{graph}->tidy(@_);
    return @_ ? undef : $rc;
}

sub random_colors {
    my $self = shift;
    my $rc = $self->{graph}->random_colors(@_);
    return @_ ? undef : $rc;
}

sub show_data_values {
    my $self = shift;
    my $rc = $self->{graph}->show_data_values(@_);
    return @_ ? undef : $rc;
}

sub bar_gap {
    my $self = shift;
    my $rc = $self->{graph}->bar_gap(@_);
    return @_ ? undef : $rc;
}

sub min_scale_value {
    my $self = shift;
    my $rc = $self->{graph}->min_scale_value(@_);
    return @_ ? undef : $rc;
}

sub max_scale_value {
    my $self = shift;
    my $rc = $self->{graph}->max_scale_value(@_);
    return @_ ? undef : $rc;
}

sub show_x_labels {
    my $self = shift;
    my $rc = $self->{graph}->show_x_labels(@_);
    return @_ ? undef : $rc;
}

sub stagger_x_labels {
    my $self = shift;
    my $rc = $self->{graph}->stagger_x_labels(@_);
    return @_ ? undef : $rc;
}

sub rotate_x_labels {
    my $self = shift;
    my $rc = $self->{graph}->rotate_x_labels(@_);
    return @_ ? undef : $rc;
}

sub show_graph_subtitle {
    my $self = shift;
    my $rc = $self->{graph}->show_graph_subtitle(@_);
    return @_ ? undef : $rc;
}

sub show_y_labels {
    my $self = shift;
    my $rc = $self->{graph}->show_y_labels(@_);
    return @_ ? undef : $rc;
}

sub scale_integers {
    my $self = shift;
    my $rc = $self->{graph}->scale_integers(@_);
    return @_ ? undef : $rc;
}

sub scale_divisions {
    my $self = shift;
    my $rc = $self->{graph}->scale_divisions(@_);
    return @_ ? undef : $rc;
}

sub show_x_title {
    my $self = shift;
    my $rc = $self->{graph}->show_x_title(@_);
    return @_ ? undef : $rc;
}

sub x_title {
    my $self = shift;
    my $rc = $self->{graph}->x_title(@_);
    return @_ ? undef : $rc;
}

sub show_y_title {
    my $self = shift;
    my $rc = $self->{graph}->show_y_title(@_);
    return @_ ? undef : $rc;
}

sub graph_title {
    my $self = shift;
    my $rc = $self->{graph}->graph_title(@_);
    return @_ ? undef : $rc;
}

sub show_graph_title {
    my $self = shift;
    my $rc = $self->{graph}->show_graph_title(@_);
    return @_ ? undef : $rc;
}

sub key {
    my $self = shift;
    my $rc = $self->{graph}->show_graph_title(@_);
    return @_ ? undef : $rc;
}

sub key_position {
    my $self = shift;
    my $rc = $self->{graph}->key_position(@_);
    return @_ ? undef : $rc;
}

sub burn {
    my $self = shift;
    return $self->{graph}->burn();
}

sub burn_as_base64 {
    my $self = shift;
    return MIME::Base64::encode_base64($self->burn(@_));
}



1;

__END__
# vim: expandtab shiftwidth=4:

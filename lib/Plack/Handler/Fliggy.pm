package Plack::Handler::Fliggy;

use strict;
use warnings;

sub new {
    my $class = shift;
    bless {@_}, $class;
}

sub run {
    my ($self, $app) = @_;

    my $class = 'Fliggy::Server';
    eval "require $class";
    die if $@;

    $class->new(%{$self})->run($app);
}

1;

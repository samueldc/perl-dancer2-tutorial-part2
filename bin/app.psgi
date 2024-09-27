#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";


# use this block if you don't need middleware, and only have a single target Dancer app to run here
use tutorial;

tutorial->to_app;

=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use tutorial;
use Plack::Builder;

builder {
    enable 'Deflater';
    tutorial->to_app;
}

=end comment

=cut

=begin comment
# use this block if you want to mount several applications on different path

use tutorial;
use tutorial_admin;

use Plack::Builder;

builder {
    mount '/'      => tutorial->to_app;
    mount '/admin'      => tutorial_admin->to_app;
}

=end comment

=cut


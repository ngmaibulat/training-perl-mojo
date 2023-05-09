#!/usr/bin/env perl
use Mojolicious::Lite -signatures;

# $app->secrets(['Mojolicious rocks']);

app->secrets(['Mojolicious rocks']);

get '/' => sub ($c) {

  my $user = $c->param('user') || '';
  my $pass = $c->param('pass') || '';

  my $user = $c->session('user') || 'sebastian';
  my $counter = $c->session('counter') || 0;

  $counter++;

  $c->session(user => $user );
  $c->session(counter => $counter);

  $c->stash(counter => $counter);
  $c->render(template => 'index');
};

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title 'Welcome';
<h1>Welcome to the Mojolicious real-time web framework!</h1>

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body>
    <%= $counter %>
  </body>
</html>

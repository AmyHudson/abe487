#!/usr/bin/env perl6

sub MAIN (Str $name!) {

  my $num = $name.chars;

  put "Hello, $name, your name has $num characters.";

}

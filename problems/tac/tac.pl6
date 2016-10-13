#!/usr/bin/env perl6


sub MAIN ($input!){

    die "Not a file ($input)" unless $input.IO.f;

    put $input.IO.lines.reverse.join("\n");

}


#!/usr/bin/env perl6

sub MAIN (Str $s1!, Str $s2!) {

 my $res = abs($s1.uc.chars - $s2.uc.chars);

 if $res eq 0 {put [+] ($s1.uc.comb Zeq $s2.uc.comb)>>.not>>.Int;}
 else {put $res+[+] ($s1.uc.comb Zeq $s2.uc.comb)>>.not>>.Int;}

 }

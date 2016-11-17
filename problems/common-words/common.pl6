#!/usr/bin/env perl6

sub MAIN (Str $file1! where *.IO.f, Str $file2! where *.IO.f) {


my $count = 0;

my $f1 =  $file1.IO.lines.map(*.uc.subst(/<-[\w\s]>/, " ", :g).words).join(" ");
my $f2 =  $file2.IO.lines.map(*.uc.subst(/<-[\w\s]>/, " ", :g).words).join(" ");

my $n = $f1.words;
my $m = $f2.words;


for 0..^($n+$m) -> $i {
for 0..^($n+$m) -> $j {
if $f1.subst($i) eq $f2.subst($j) {$count++};
}
}

put "$count";
}

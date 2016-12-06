#!/usr/bin/env perl6

class Phenophase {
        has Rat $.latitude is required;
        has Rat $.longitude is required;
        has Int $.dayofyear is required;
        method western_US {
                sprintf "%s %s %s",
                $!latitude,
                $!longitude,
                $!dayofyear;
        }
}
my Phenophase $onset .= new(latitude => 31.13, longitude => 42.12,
                        dayofyear => 102);
for $onset {
	printf "%s\n", .western_US, ;
}

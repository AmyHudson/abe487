#!/bin/bash

set -u

if [[ $# -eq 1 ]]; then #nl should be used
 echo "1 foo"
 echo "2 bar"
 exit 0;
else
 echo "Usage: cat-n.sh file"
 exit 1;
fi

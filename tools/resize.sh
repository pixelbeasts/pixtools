#!/usr/bin/env bash
# set -x
infile=$1

size=$2
# or hardwire it
# size="24x24"

outfile=${infile/.gif/-${size}.gif}
convert $infile -resize $size  $outfile

echo "resized $infile => $outfile"

#!/usr/bin/env bash

set -x
infile=$1

# size="${2}"
# or hardwire it
# size="24x24"
size="256x256"

case $infile in
    *.gif)
        outfile="${infile/.gif/-${size}.gif}"
        ;;

    *.png)
        outfile="${infile/.png/-${size}.gif}"
        ;;

    *)
        echo "should be png or gif"
esac


# output format always gif
# TODO - check infile format
# outfile="${infile/.gif/-${size}.gif}"
# outfile="${infile/.png/-${size}.gif}"

# assetPath="assets/resized/${size}"
# mkdir -p $assetPath
# outfile="${infile/assets/$assetPath}"

convert $infile  -interpolate Integer -filter point -resize $size  $outfile

echo "resized $infile => $outfile"

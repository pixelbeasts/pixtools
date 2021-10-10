#!/usr/bin/env bash

set -x
pad=10000      ;# 5 digit fixed

# for i in {1..9999}; do ((j=pad+i))
for i in {1001..9999}; do ((j=pad+i))
    tokenId=${j#?}
    echo "tokenId: $tokenId"
	time curl "https://beastopia.com/nobg/${tokenId}.png" > assets/icons/${tokenId}.png

done


#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#FDFDFD/g' \
         -e 's/rgb(100%,100%,100%)/#111115/g' \
    -e 's/rgb(50%,0%,0%)/#ffffff/g' \
     -e 's/rgb(0%,50%,0%)/#ffb581/g' \
 -e 's/rgb(0%,50.196078%,0%)/#ffb581/g' \
     -e 's/rgb(50%,0%,50%)/#FDFDFD/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#FDFDFD/g' \
     -e 's/rgb(0%,0%,50%)/#1D1F28/g' \
	"$@"

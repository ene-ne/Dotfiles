#!/bin/sh
sed -i \
         -e 's/#FDFDFD/rgb(0%,0%,0%)/g' \
         -e 's/#111115/rgb(100%,100%,100%)/g' \
    -e 's/#ffffff/rgb(50%,0%,0%)/g' \
     -e 's/#ffb581/rgb(0%,50%,0%)/g' \
     -e 's/#FDFDFD/rgb(50%,0%,50%)/g' \
     -e 's/#1D1F28/rgb(0%,0%,50%)/g' \
	"$@"

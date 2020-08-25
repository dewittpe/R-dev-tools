#!/bin/bash

# NOTE: The following can be very helpful to get the needed dependencies for R
# built without installing R on your system.
#
# apt-get build-dep r-base-dev

version=$1

/bin/rm -f R-$version.tar.gz

if [ "$version" == "devel" ]; then
  wget https://cran.r-project.org/src/base-prerelease/R-devel.tar.gz
else
  wget https://cran.r-project.org/src/base/R-4/R-$version.tar.gz
fi

/bin/rm -rf R-$version
tar -xvf R-$version.tar.gz
cd R-$version
./configure --with-blas --with-lapack --enable-R-shlib --enable-BLAS-shlib --with-x --with-cairo --with-readline --with-libtiff --with-libpng --with-jpeglib
make
make pdf
make info
cd ..

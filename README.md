# R-dev-tools

The files contained in this repository have been helpful tools for building
multimple versions of R on my machines, using CI, and building packages.

A very helpful step for setup for the first time

    apt-get build-dep r-base-dev

This will install all the dependencies needed for the base R package without
installing R from aptitude. 

## Files

### `get_released.sh` 
A bash script used to download and build R.

Download and build the developmental version of R
 
    ./get_released.sh devel 

Download and build a 3.x.y version of R
 
    ./get_released.sh 3.x.y

It will be helpful to set up softlinks to R-3.x.y after the build

    ln -s R-3.x.y/bin/R ~/.local/bin/R
    ln -s R-3.x.y/bin/Rscript ~/.local/bin/Rscript

After install, run 

    R CMD BATCH install_packages.R

to install a set of your most commonly needed packages.

### `install_packages.R`
This R script will install a set of packages I will almost certainly need on any
R install.

    R CMD BATCH install_packages.R

### makefiles

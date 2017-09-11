options(download.file.method = "wget")
options(warn = 2)

pkgs <-
  c("acepack",
    "broom",
    "BH",
    "caTools",
    "choroplethr",
    "cpr",
    "devtools",
    "dplyr",
    "ggplot2",
    "ggforce",
    "ggmap",
    "gmodels",
    "gridExtra",
    "gtable",
    "inline",
    "knitr",
    "lme4",
    "qwraps2",
    "Rcpp",
    "RcppArmadillo",
    "readr",
    "rmarkdown",
    "roxygen2",
    "shiny",
    "sf",
    "sp",
    "testthat",
    "tictoc",
    "tidyr",
    "tidyverse",
    "withr",
    "xtable",
    "yaml")

unavailable_pkgs <- c()
pkgs <- pkgs[!(pkgs %in% rownames(installed.packages()))]

while( length(pkgs) > 0 ) {
  x <- try(install.packages(pkgs[1], repos = "https://cran.rstudio.com"))
  
  if (class(x) == "try-error") {
    unavailable_pkgs <- append(unavailable_pkgs, pkgs[1])
    pkgs <- pkgs[-1]
  }
  pkgs <- pkgs[!(pkgs %in% rownames(installed.packages()))]
} 

pkgs
unavailable_pkgs

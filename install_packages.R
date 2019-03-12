# options(download.file.method = "wget")
# options(warn = 2)
options(repos = c(CRAN = "https://cran.rstudio.com",
                  BIOC = "https://bioconductor.org/packages/release/bioc/"))
library(colorout)

# setHook(packageEvent("grDevices", "onLoad"),
#         function(...) grDevices::X11.options(type='cairo'))
# options(device='x11')

old_lib <- commandArgs(trailingOnly = TRUE)
old_pkgs <- list.files(old_lib)

if (!("devtools" %in% rownames(available.packages()))) {
  install.packages("devtools", repos = "https://cran.rstudio.com")
}

for (p in old_pkgs) {
  try(devtools::install_cran(p), silent = TRUE)
}


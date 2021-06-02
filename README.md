
# samplepackage

<!-- badges: start -->
[![R-CMD-check](https://github.com/YuxinHuang0723/samplepackage/workflows/R-CMD-check/badge.svg)](https://github.com/YuxinHuang0723/samplepackage/actions)
[![codecov](https://codecov.io/gh/YuxinHuang0723/samplepackage/branch/master/graph/badge.svg?token=DFYM8N55Z7)](https://codecov.io/gh/YuxinHuang0723/samplepackage)
<!-- badges: end -->

The goal of samplepackage is to ...

## Installation

You can install package from Github through 

``` r
devtools::install_github("YuxinHuang0723/samplepackage")```
```
To view the vignettes

```{r}
devtools::install_github("YuxinHuang0723/samplepackage", build_vignette = TRUE, build_opts = c())
library(Demo)
# Use this to view the vignette in the Demo HTML help
help(package = "samplepackage", help_type = "html")
# Use this to view the vignette as an isolated HTML file
utils::browseVignettes(package = "samplepackage")
```

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
#  inflate(vignette_name = c("Super title" = "01-Super Vignette Index Entry"))

## ----eval=FALSE---------------------------------------------------------------
#  inflate(vignette_name = NA)

## ----eval=FALSE---------------------------------------------------------------
#  # The path relative to the "tests/testthat" directory for tests
#  the_file <- "my_file.csv"
#  if (!file.exists(the_file)) {
#    # The path to use during dev in the flat file
#    the_file <- file.path("tests", "testthat", the_file)
#    if (!file.exists(the_file)) {
#      stop(the_file, " does not exist")
#    }
#  }
#  
#  my_file <- read.csv(the_file)


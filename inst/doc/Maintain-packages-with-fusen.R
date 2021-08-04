## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(fusen)

## ---- eval=FALSE--------------------------------------------------------------
#  #' My median
#  #'
#  #' @param x Vector of Numeric values
#  #' @inheritParams stats::median
#  #'
#  #' @return
#  #' Median of vector x
#  #' @export
#  #'
#  #' @examples
#  my_median <- function(x, na.rm = TRUE) {
#    if (!is.numeric(x)) {stop("x should be numeric")}
#    stats::median(x, na.rm = na.rm)
#  }

## ---- eval=FALSE--------------------------------------------------------------
#  my_median(1:12)

## ---- eval=FALSE--------------------------------------------------------------
#  test_that("my_median works properly and show error if needed", {
#    expect_true(my_median(1:12) == 6.5)
#    expect_error(my_median("text"))
#  })


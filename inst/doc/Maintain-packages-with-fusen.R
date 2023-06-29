## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(fusen)

## ---- eval=FALSE--------------------------------------------------------------
#  add_flat_template(template = "add")
#  # or directly
#  add_additional()

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
#    if (!is.numeric(x)) {
#      stop("x should be numeric")
#    }
#    stats::median(x, na.rm = na.rm)
#  }

## ---- eval=FALSE--------------------------------------------------------------
#  my_median(1:12)

## ---- eval=FALSE--------------------------------------------------------------
#  test_that("my_median works properly and show error if needed", {
#    expect_true(my_median(1:12) == 6.5)
#    expect_error(my_median("text"))
#  })

## ---- echo=FALSE--------------------------------------------------------------
comp.table <- tibble::tibble(
  `Classical with {devtools}` = c(
    "
- File > New Project > New directory > Package with devtools
    + Or `devtools::create()`",
    '
- Open "DESCRIPTION" file
- Write your information
- Run function for the desired license in the console
    + `usethis::use_*_license()`',
    '
- Create and open a file for your functions in "R/"
      + `usethis::use_r("my_fonction")`
- Write the code of your function
- Write a reproducible example for your function

- Open DESCRIPTION file and fill the list of dependencies required

- Create and open a new file for your tests in "tests/testthat/"
      + `usethis::use_testthat()`
      + `usethis::use_test("my_fonction")`
- Write some unit tests for your function

- Create and open a new file for a vignette in "vignettes/"
      + `usethis::use_vignette("Vignette title")`

- Open DESCRIPTION file and fill the list of "Suggests" dependencies required',
    "
- Generate documentation
  + Either `attachment::att_amend_desc()`
  + Or `roxygen2::roxygenise()`

- Check the package
  + `devtools::check()` => `0 errors, 0 warnings, 0 notes`",
    "=> For one function, you need to switch regularly between 4 files"
  ),
  `With {fusen}` = c(
    "
- File > New Project > New directory > Package with {fusen}
  + Or `fusen::create_fusen()`",
    "
- Fill your information in the opened flat file
- Execute the chunk `description`",
    "
- Write code, examples and test in the unique opened flat file",
    '
- Inflate your flat file
  + Execute `fusen::inflate()` in the last "development" chunk',
    "=> For one function, you need only one file"
  )
)

if (knitr::is_html_output()) {
  comp.table <- tibble::as_tibble(
    lapply(comp.table, function(x) gsub("  ", "&#8194;", gsub("\n", "<br/>", x)))
  )
  knitr::kable(comp.table, format = "html", escape = FALSE)
} else if (knitr::is_latex_output()) {
  knitr::kable(comp.table, format = "latex", escape = FALSE)
} else {
  knitr::kable(comp.table, format = "markdown", escape = FALSE)
}


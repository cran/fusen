## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(fusen)

## ----examples-get_package_structure-------------------------------------------
#' \dontrun{
#' # This only works inside a 'fusen' built package
#' pkg_structure <- get_package_structure()
#' draw_package_structure(pkg_structure)
#' }
#'
#' # Example with a dummy package
dummypackage <- tempfile("drawpkg.structure")
dir.create(dummypackage)

# {fusen} steps
fill_description(pkg = dummypackage, fields = list(Title = "Dummy Package"))
dev_file <- suppressMessages(
  add_flat_template(pkg = dummypackage, overwrite = TRUE, open = FALSE)
)
flat_file <- dev_file[grepl("flat_", dev_file)]

usethis::with_project(dummypackage, {
  # Add an extra R file with internal function
  # to list in "keep"
  dir.create("R")
  cat("extra_fun <- function() {1}\n", file = "R/my_extra_fun.R")

  # Works with classical package
  pkg_structure <- get_package_structure()
  draw_package_structure(pkg_structure)
})

usethis::with_project(dummypackage, {
  # Works with 'fusen' package
  suppressMessages(
    inflate(
      pkg = dummypackage,
      flat_file = flat_file,
      vignette_name = "Get started",
      check = FALSE,
      open_vignette = FALSE
    )
  )

  pkg_structure <- get_package_structure()
  draw_package_structure(pkg_structure)
})

## ----example-get_all_created_funs---------------------------------------------
file_path <- tempfile(fileext = ".R")
cat(
  "my_fun <- function() {1}",
  "my_fun2 <- function() {2}",
  sep = "\n",
  file = file_path
)
get_all_created_funs(file_path)


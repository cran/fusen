## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(fusen)

## ----example-rename_flat_file-------------------------------------------------
#  #' \dontrun{
#  # These functions change the current user workspace
#  dev_file <- suppressMessages(
#    add_flat_template(
#      template = "add",
#      pkg = ".",
#      overwrite = TRUE,
#      open = FALSE
#    )
#  )
#  rename_flat_file(
#    flat_file = "dev/flat_additional.Rmd",
#    new_name = "flat_new.Rmd"
#  )
#  #' }

## ----example-deprecate_flat_file----------------------------------------------
#  #' \dontrun{
#  #' # These functions change the current user workspace
#  dev_file <- suppressMessages(
#    add_flat_template(
#      template = "add",
#      pkg = dummypackage,
#      overwrite = TRUE,
#      open = FALSE
#    )
#  )
#  deprecate_flat_file(flat_file = "dev/flat_additional.Rmd")
#  #' }


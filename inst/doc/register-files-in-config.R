## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(fusen)

## -----------------------------------------------------------------------------
#  fusen::inflate_all_no_check()

## ----example-check_not_registered_files---------------------------------------
#  #' \dontrun{
#  # Run this on the current package in development
#  out_csv <- check_not_registered_files()
#  file.edit(out_csv)
#  #' }

## ----example2-check_not_registered_files--------------------------------------
#  # Or you can try on the reproducible example
#  dummypackage <- tempfile("clean")
#  dir.create(dummypackage)
#  
#  # {fusen} steps
#  fill_description(pkg = dummypackage, fields = list(Title = "Dummy Package"))
#  dev_file <- suppressMessages(add_flat_template(pkg = dummypackage, overwrite = TRUE, open = FALSE))
#  flat_file <- dev_file[grepl("flat_", dev_file)]
#  # Inflate once
#  usethis::with_project(dummypackage, {
#    suppressMessages(
#      inflate(
#        pkg = dummypackage, flat_file = flat_file,
#        vignette_name = "Get started", check = FALSE,
#        open_vignette = FALSE
#      )
#    )
#  
#    # Add a not registered file to the package
#    cat("# test R file\n", file = file.path(dummypackage, "R", "to_keep.R"))
#  
#    # Use the function to check the list of files
#    out_csv <- check_not_registered_files(dummypackage)
#    out_csv
#    # Read the csv to see what is going on
#    content_csv <- read.csv(out_csv, stringsAsFactors = FALSE)
#    content_csv
#    # Keep it all or delete some files, and then register all remaining
#    out_config <- register_all_to_config()
#    out_config
#    # Open the out_config file to see what's going on
#    yaml::read_yaml(out_config)
#  })
#  unlink(dummypackage, recursive = TRUE)

## ----example-register_all_to_config-1-----------------------------------------
#  #' \dontrun{
#  # Usually run this one inside the current project
#  # Note: running this will write "dev/config_fusen.yaml" in your working directory
#  register_all_to_config()
#  #' }

## ----example-register_all_to_config-2-----------------------------------------
#  # Or you can try on the reproducible example
#  dummypackage <- tempfile("register")
#  dir.create(dummypackage)
#  
#  # {fusen} steps
#  fill_description(pkg = dummypackage, fields = list(Title = "Dummy Package"))
#  dev_file <- suppressMessages(add_flat_template(pkg = dummypackage, overwrite = TRUE, open = FALSE))
#  flat_file <- dev_file[grepl("flat_", dev_file)]
#  # Inflate once
#  usethis::with_project(dummypackage, {
#    suppressMessages(
#      inflate(
#        pkg = dummypackage, flat_file = flat_file,
#        vignette_name = "Get started", check = FALSE,
#        open_vignette = FALSE
#      )
#    )
#    out_path <- register_all_to_config(dummypackage)
#  
#    # Look at the output
#    yaml::read_yaml(out_path)
#  })


## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(fusen)

## ----example-inflate_all------------------------------------------------------
#  #' \dontrun{
#  # Usually, in the current package run inflate_all() directly
#  # These functions change the current user workspace
#  inflate_all()
#  # Or inflate_all_no_check() to prevent checks to run
#  inflate_all_no_check()
#  # Or inflate with the styler you want
#  inflate_all(stylers = styler::style_pkg)
#  #' }
#  
#  # You can also inflate_all flats of another package as follows
#  # Example with a dummy package with a flat file
#  dummypackage <- tempfile("inflateall.otherpkg")
#  dir.create(dummypackage)
#  fill_description(pkg = dummypackage, fields = list(Title = "Dummy Package"))
#  flat_files <- add_minimal_package(
#    pkg = dummypackage,
#    overwrite = TRUE,
#    open = FALSE
#  )
#  flat_file <- flat_files[grep("flat", basename(flat_files))]
#  # Inflate the flat file once
#  usethis::with_project(dummypackage, {
#    # if you are starting from a brand new package, inflate_all() will crash
#    # it's because of the absence of a fusen config file
#    #
#    # inflate_all() # will crash
#  
#    # Add licence
#    usethis::use_mit_license("John Doe")
#  
#    # you need to inflate manually your flat file first
#    inflate(
#      pkg = dummypackage,
#      flat_file = flat_file,
#      vignette_name = "Get started",
#      check = FALSE,
#      open_vignette = FALSE,
#      document = TRUE,
#      overwrite = "yes"
#    )
#  
#    # your config file has been created
#    config_yml_ref <-
#      yaml::read_yaml(getOption("fusen.config_file", default = "dev/config_fusen.yaml"))
#  })
#  
#  # Next time, you can run inflate_all() directly
#  usethis::with_project(dummypackage, {
#    # now you can run inflate_all()
#    inflate_all(check = FALSE, document = TRUE)
#  })
#  
#  # If you wish, the code coverage can be computed
#  usethis::with_project(dummypackage, {
#    # now you can run inflate_all()
#    inflate_all(check = FALSE, document = TRUE, codecov = TRUE)
#  })
#  
#  # Clean the temporary directory
#  unlink(dummypackage, recursive = TRUE)


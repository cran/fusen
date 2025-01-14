## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(fusen)

## ----examples-sepuku----------------------------------------------------------
#  #' \dontrun{
#  sepuku()
#  # If you want to force the cleaning, you can use the force argument
#  sepuku(force = TRUE)
#  
#  # Example with a dummy package
#  dummypackage <- tempfile("sepuku.example")
#  dir.create(dummypackage)
#  fill_description(pkg = dummypackage, fields = list(Title = "Dummy Package"))
#  
#  usethis::with_project(dummypackage, {
#    # Add licence
#    usethis::use_mit_license("John Doe")
#  
#    dir.create(file.path(dummypackage, "dev"))
#    dir.create(file.path(dummypackage, "dev", "flat_history"))
#  
#    # We add 2 flat files in the package and inflate them
#    dev_file1 <- add_minimal_flat(
#      pkg = dummypackage,
#      flat_name = "flat1.Rmd",
#      open = FALSE
#    )
#  
#    dev_file2 <- add_minimal_flat(
#      pkg = dummypackage,
#      flat_name = "flat2.Rmd",
#      open = FALSE
#    )
#  
#    inflate(
#      pkg = dummypackage,
#      flat_file = dev_file1,
#      vignette_name = "Get started",
#      check = FALSE,
#      open_vignette = FALSE,
#      document = TRUE,
#      overwrite = "yes"
#    )
#  
#    inflate(
#      pkg = dummypackage,
#      flat_file = dev_file2,
#      vignette_name = "Get started 2",
#      check = FALSE,
#      open_vignette = FALSE,
#      document = TRUE,
#      overwrite = "yes"
#    )
#  
#    # We deprecate the first flat file, which will be moved to the flat_history folder
#    deprecate_flat_file(
#      file.path(dummypackage, "dev", "flat_flat1.Rmd")
#    )
#  
#    # We create 2 flat files with the qmd extension
#    file.create(file.path(dummypackage, "dev", "flat_history", "flat_old.qmd"))
#    file.create(file.path(dummypackage, "dev", "flat_qmd.qmd"))
#  
#    sepuku(force = TRUE)
#  
#    # We check that the fusen configuration file has been deleted
#    file.exists(
#      file.path(dummypackage, "dev", "config_fusen.yaml")
#    )
#  
#    # We check that all the flat files have been deleted
#    length(
#      list.files(
#        file.path(dummypackage, "dev"),
#        pattern = "^flat.*\\.Rmd"
#      )
#    )
#  
#    length(
#      list.files(
#        file.path(dummypackage, "dev"),
#        pattern = "^flat.*\\.qmd"
#      )
#    )
#  
#  
#    length(
#      list.files(
#        file.path(dummypackage, "dev", "flat_history"),
#        pattern = "^flat.*\\.Rmd"
#      )
#    )
#  
#  
#    length(
#      list.files(
#        file.path(dummypackage, "dev", "flat_history"),
#        pattern = "^flat.*\\.qmd"
#      )
#    )
#  
#    # We check that all the files with fusen tags have been cleaned
#    length(fusen:::find_files_with_fusen_tags(pkg = dummypackage))
#  })
#  
#  # Clean the temporary directory
#  unlink(dummypackage, recursive = TRUE)
#  #' }


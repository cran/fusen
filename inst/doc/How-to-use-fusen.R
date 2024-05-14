## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(fusen)

## ----example-description, eval=FALSE------------------------------------------
#  fill_description(
#    pkg = dummypackage,
#    fields = list(
#      Title = "Build A Package From Rmarkdown file",
#      Description = paste(
#        "Use Rmarkdown First method to build your package.",
#        "Start your package with documentation.",
#        "Everything can be set from a Rmarkdown file in your project."
#      ),
#      `Authors@R` = c(
#        person("John", "Doe", email = "john@email.me", role = c("aut", "cre"), comment = c(ORCID = "0000-0000-0000-0000")),
#        person(given = "Company", role = "cph")
#      )
#    )
#  )

## ----example-inflate, eval=FALSE----------------------------------------------
#  fusen::inflate(
#    flat_file = "dev/flat_teaching.Rmd",
#    vignette_name = "Exploration of my Data",
#    open_vignette = TRUE,
#    document = TRUE,
#    check = TRUE
#  )

## ----eval=FALSE---------------------------------------------------------------
#  # Create a new project
#  dummypackage <- tempfile(pattern = "dummy")
#  
#  # {fusen} steps
#  dev_file <- create_fusen(dummypackage, template = "teaching", open = FALSE)
#  # Description
#  fusen::fill_description(pkg = dummypackage, fields = list(Title = "Dummy Package"))
#  
#  # From inside the package
#  usethis::with_project(dummypackage, {
#    # Define License with use_*_license()
#    usethis::use_mit_license("John Doe")
#  
#    # You may need to execute inflate() in the console directly
#    fusen::inflate(
#      pkg = dummypackage,
#      flat_file = dev_file,
#      vignette_name = "Get started"
#    )
#  })
#  
#  # Explore directory of the package
#  browseURL(dummypackage)
#  
#  # Delete dummy package
#  unlink(dummypackage, recursive = TRUE)

## ----example, eval=FALSE------------------------------------------------------
#  # Add an additional dev template
#  add_flat_template(template = "add", pkg = dummypackage)
#  # or directly
#  add_additional(pkg = dummypackage)


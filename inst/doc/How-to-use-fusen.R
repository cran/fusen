## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(fusen)

## ----example-dontrun, echo=TRUE, eval=FALSE-----------------------------------
#  #' \dontrun{
#  an_example <- 1 + 1
#  an_example
#  #' }
#  
#  #' OR
#  
#  #' \dontrun{
#  #' an_example <- 1 + 1
#  #' an_example
#  #' }

## ----example------------------------------------------------------------------
# Create a new project
dummypackage <- tempfile("dummypackage")
dir.create(dummypackage)

# Add an additional dev template
add_flat_template(template = "add", pkg = dummypackage)

# Delete dummy package
unlink(dummypackage, recursive = TRUE)

## ----example-2----------------------------------------------------------------
# Create a new project
dummypackage <- tempfile("dummypackage")
dir.create(dummypackage)

fill_description(
  pkg = dummypackage,
  fields = list(
    Title = "Build A Package From Rmarkdown file",
    Description = paste("Use Rmarkdown First method to build your package.", 
                        "Start your package with documentation.", 
                        "Everything can be set from a Rmarkdown file in your project."),
    `Authors@R` = c(
      person("Sebastien", "Rochette", email = "sebastien@thinkr.fr", 
             role = c("aut", "cre"), comment = c(ORCID = "0000-0002-1565-9313")),
      person(given = "ThinkR", role = "cph")
    )
  )
)

# Delete dummy package
unlink(dummypackage, recursive = TRUE)

## ----example-3, eval = FALSE--------------------------------------------------
#  # Create a new project
#  dummypackage <- tempfile("dummypackage")
#  dir.create(dummypackage)
#  
#  # {fusen} steps
#  fill_description(pkg = dummypackage, fields = list(Title = "Dummy Package"))
#  dev_file <- add_flat_template(template = "teaching",
#                                pkg = dummypackage, overwrite = TRUE)
#  inflate(
#    pkg = dummypackage,
#    flat_file = dev_file,
#    vignette_name = "Exploration of my Data",
#    check = FALSE
#  )
#  
#  # Explore directory of the package
#  browseURL(dummypackage)
#  
#  # Delete dummy package
#  unlink(dummypackage, recursive = TRUE)

## ---- eval=FALSE--------------------------------------------------------------
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
#    usethis::use_mit_license("Sébastien Rochette")
#  
#    # You may need to execute inflate() in the console directly
#    fusen::inflate(pkg = dummypackage,
#                   flat_file = dev_file,
#                   vignette_name = "Get started")
#  })


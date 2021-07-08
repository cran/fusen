## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(fusen)

## ----example------------------------------------------------------------------
# Create a new project
tmpdir <- tempdir()
dummypackage <- file.path(tmpdir, "dummypackage")
dir.create(dummypackage)

# Add
add_dev_history(pkg = dummypackage)

# Delete dummy package
unlink(dummypackage, recursive = TRUE)

## ----example-2----------------------------------------------------------------
# Create a new project
tmpdir <- tempdir()
dummypackage <- file.path(tmpdir, "dummypackage")
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
#  tmpdir <- tempdir()
#  dummypackage <- file.path(tmpdir, "dummypackage")
#  dir.create(dummypackage)
#  
#  # {fusen} steps
#  fill_description(pkg = dummypackage, fields = list(Title = "Dummy Package"))
#  dev_file <- add_dev_history(pkg = dummypackage, overwrite = TRUE)
#  inflate(pkg = dummypackage, rmd = dev_file, name = "Exploration of my Data", check = FALSE)
#  
#  # Explore directory of the package
#  # browseURL(dummypackage)
#  
#  # Try pkgdown build
#  # pkgdown::build_site(dummypackage)
#  # usethis::use_build_ignore("docs")
#  # usethis::use_git_ignore("docs")
#  # Delete dummy package
#  unlink(dummypackage, recursive = TRUE)


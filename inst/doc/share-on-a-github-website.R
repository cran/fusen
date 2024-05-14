## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(fusen)

## -----------------------------------------------------------------------------
#  path_project <- "your/path/where/to/start/your/project/project_name"
#  fusen::create_fusen(path = path_project, template = "minimal", with_git = TRUE, open = TRUE)

## -----------------------------------------------------------------------------
#  # Describe your project
#  fusen::fill_description(
#    pkg = here::here(),
#    fields = list(
#      Title = "Share Your Project Following Good Development Practices From a Rmarkdown File",
#      Description = "Use Rmarkdown First method. Strengthen your work with documentation and tests. Everything can be set from a Rmarkdown file in your project.",
#      `Authors@R` = c(
#        person("John", "Doe", email = "john@email.me", role = c("aut", "cre"), comment = c(ORCID = "0000-0000-0000-0000"))
#      )
#    )
#  )
#  # Define License with use_*_license()
#  usethis::use_mit_license("John Doe")

## -----------------------------------------------------------------------------
#  fusen::inflate(flat_file = "dev/flat_full.Rmd", vignette_name = "Get started")

## ----examples-init_share_on_github--------------------------------------------
#  #' \dontrun{
#  #' # This modifies the current directory and send it on GitHub
#  init_share_on_github()
#  #' }


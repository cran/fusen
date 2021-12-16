# fusen 0.3.0

## Breaking changes

* `add_flat_template()` superseeds `add_dev_history()` with more advanced possibilities
* `add_dev_history()` is deprecated
* Vignette name to create is now set with `inflate(vignette_name = "Get started")` instead of `name`
* Flat name to inflate is now set with `inflate(flat_file = "dev/flat_full.Rmd")` instead of `rmd`

## Major changes

* Check included now uses `devtools::check()` instead of `rcmdcheck()`
* Avoid creating vignette with `inflate(vignette_name = NA)`
* Decide whether or not to open vignette when inflate with `inflate(open_vignette = FALSE)`
* Improve documentation included in flat templates to reflect changes in using dev_history file
* Add Rstudio Addin to insert a new flat template
* Add Rstudio Addin to insert chunks for new function (@ColinFay)
* Deal with `\dontrun{}` in example chunks
* Allow short names for chunks: dev, fun, ex, test
* `create_fusen()` to create a {fusen} project from command line or with RStudio new project (@ALanguillaume)
* Add "do not edit by hand" in files generated

### Grouping functions under the same file

* Group functions in same R file and test file if under same (level 1 + level 2) titles in the Rmd
* Group functions in same R file and test file if they have the same `@rdname` roxygen tag
* Group functions in same R file and test file if they have the same `@filename` roxygen tag (only recognized by 'fusen')
* Group functions in same R file and test file if the function chunk get chunk option `{r function-my_func, filename = "my_filename"}`


## Minor changes

* `add_flat_template()` uses the `flat_name` to pre-fill the template with the first function name.
* Fix .onLoad functions file creation
* Allow `R6Class()` in `function` chunks
* Fix inflate function chunks with data or package documentation only
* Fix inflate with empty functions chunks
* Fix filename to inflate in templates with new calls of `add_dev_history()` (@Cervangirard)
* Default vignette name is now "Get started" creating "vignettes/get-started.Rmd"
* All open files are saved when using `inflate()` where {rstudioapi} works
* Ask to restart RStudio after first inflate

# fusen 0.2.4

* Update vignette and tests

# fusen 0.2.3

* Update unit tests
* Show check outputs in console
* Ask before overwriting everything
* Check Description Title and description fields
* Check if folder name is correct package name

# fusen 0.2.2

* Protect tests from older Pandoc versions

# fusen 0.2.1

* Fix documentation issues for CRAN
* Add templates for "dev_history.Rmd" file
* Add more informative messages to users
* New vignette to explain how to maintain a {fusen} package

# fusen 0.2.0

* Prepare for CRAN

# fusen 0.1.1

## features

* Allow non-clean vignette name
* Allow different "dev_history" templates: "full", "minimal" and "additional"

## documentation

* Add vignette to explain how to maintain a package with {fusen}
* Add vignette to explain how to deal with data
* Added a `NEWS.md` file to track changes to the package.

## tests

* Add tests for corner cases in Rmd templates

# fusen 0.1.0

* First release

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
options(rmarkdown.html_vignette.check_title = FALSE)

## ----setup--------------------------------------------------------------------
library(rethnicity)

## -----------------------------------------------------------------------------
predict_ethnicity(lastnames = "Jackson", method = "lastname")

## -----------------------------------------------------------------------------
predict_ethnicity(firstnames = "Samuel", lastnames = "Jackson", method = "fullname")

## -----------------------------------------------------------------------------
firstnames <- c("Samuel", "Will")
lastnames <- c("Jackson", "Smith")
predict_ethnicity(lastnames = lastnames, method = "lastname")
predict_ethnicity(firstnames = firstnames, lastnames = lastnames, method = "fullname")

## -----------------------------------------------------------------------------
firstnames <- rep("Samuel", 1000)
lastnames <- rep("Jackson", 1000)
# measure the elapsed time
start_time <- Sys.time()
p <- predict_ethnicity(firstnames = firstnames, lastnames = lastnames, threads = parallel::detectCores()-2)
end_time <- Sys.time()
end_time - start_time


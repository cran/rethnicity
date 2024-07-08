## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(rethnicity)

## -----------------------------------------------------------------------------
# remember the list of labels we mentioned?
labels <- c("asian", "black", "hispanic", "white")

# change to your own model file path
model_path <- system.file("models", "fullname_aligned_distill.json", package = "rethnicity", mustWork = TRUE)

# run the prediction
predict_fullname(firstnames = "Alan", lastnames = "Turing", labels = labels, model_path = model_path)


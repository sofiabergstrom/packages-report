#' ---
#' output: github_document
#' ---

library(tidyverse)

.libPaths()

installed.packages()

ipt <- installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority, Built)
  
ipt

# A commit from GitHub

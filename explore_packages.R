library(tidyverse)

.libPaths()

installed.packages()

ipt <- installed.packages() %>%
  as_tibble() %>%
  select(Package, LidPath, Version, Priority, Built)
  
ipt

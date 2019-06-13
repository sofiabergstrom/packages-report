`myname <- ‘Sofia’

dir.create(here("data"))

installed.packages() %>%
  as_tibble() %>%
  select(Package) %>%
  mutate(name=myname) %>%
  readr::write_csv(path = here(‘data’, paste0(myname,‘_installed_packages.csv’)))`
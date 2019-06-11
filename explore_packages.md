explore\_packages.R
================
sofiabergstrom
2019-06-11

``` r
library(tidyverse)
```

    ## Registered S3 methods overwritten by 'ggplot2':
    ##   method         from 
    ##   [.quosures     rlang
    ##   c.quosures     rlang
    ##   print.quosures rlang

    ## ── Attaching packages ────────────────────────────────────────────────────────────────────────── tidyverse 1.2.1 ──

    ## ✔ ggplot2 3.1.1     ✔ purrr   0.3.2
    ## ✔ tibble  2.1.3     ✔ dplyr   0.8.1
    ## ✔ tidyr   0.8.3     ✔ stringr 1.4.0
    ## ✔ readr   1.3.1     ✔ forcats 0.4.0

    ## ── Conflicts ───────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
.libPaths()
```

    ## [1] "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"

``` r
installed.packages()
```

    ##              Package       
    ## askpass      "askpass"     
    ## assertthat   "assertthat"  
    ## backports    "backports"   
    ## base         "base"        
    ## base64enc    "base64enc"   
    ## BH           "BH"          
    ## boot         "boot"        
    ## broom        "broom"       
    ## callr        "callr"       
    ## cellranger   "cellranger"  
    ## class        "class"       
    ## cli          "cli"         
    ## clipr        "clipr"       
    ## cluster      "cluster"     
    ## codetools    "codetools"   
    ## colorspace   "colorspace"  
    ## compiler     "compiler"    
    ## crayon       "crayon"      
    ## curl         "curl"        
    ## datasets     "datasets"    
    ## DBI          "DBI"         
    ## dbplyr       "dbplyr"      
    ## digest       "digest"      
    ## dplyr        "dplyr"       
    ## ellipsis     "ellipsis"    
    ## evaluate     "evaluate"    
    ## fansi        "fansi"       
    ## forcats      "forcats"     
    ## foreign      "foreign"     
    ## fs           "fs"          
    ## generics     "generics"    
    ## ggplot2      "ggplot2"     
    ## glue         "glue"        
    ## graphics     "graphics"    
    ## grDevices    "grDevices"   
    ## grid         "grid"        
    ## gtable       "gtable"      
    ## haven        "haven"       
    ## highr        "highr"       
    ## hms          "hms"         
    ## htmltools    "htmltools"   
    ## httr         "httr"        
    ## jsonlite     "jsonlite"    
    ## KernSmooth   "KernSmooth"  
    ## knitr        "knitr"       
    ## labeling     "labeling"    
    ## lattice      "lattice"     
    ## lazyeval     "lazyeval"    
    ## lubridate    "lubridate"   
    ## magrittr     "magrittr"    
    ## markdown     "markdown"    
    ## MASS         "MASS"        
    ## Matrix       "Matrix"      
    ## methods      "methods"     
    ## mgcv         "mgcv"        
    ## mime         "mime"        
    ## modelr       "modelr"      
    ## munsell      "munsell"     
    ## nlme         "nlme"        
    ## nnet         "nnet"        
    ## openssl      "openssl"     
    ## parallel     "parallel"    
    ## pillar       "pillar"      
    ## pkgconfig    "pkgconfig"   
    ## plogr        "plogr"       
    ## plyr         "plyr"        
    ## prettyunits  "prettyunits" 
    ## processx     "processx"    
    ## progress     "progress"    
    ## ps           "ps"          
    ## purrr        "purrr"       
    ## R6           "R6"          
    ## RColorBrewer "RColorBrewer"
    ## Rcpp         "Rcpp"        
    ## readr        "readr"       
    ## readxl       "readxl"      
    ## rematch      "rematch"     
    ## reprex       "reprex"      
    ## reshape2     "reshape2"    
    ## rlang        "rlang"       
    ## rmarkdown    "rmarkdown"   
    ## rpart        "rpart"       
    ## rstudioapi   "rstudioapi"  
    ## rvest        "rvest"       
    ## scales       "scales"      
    ## selectr      "selectr"     
    ## spatial      "spatial"     
    ## splines      "splines"     
    ## stats        "stats"       
    ## stats4       "stats4"      
    ## stringi      "stringi"     
    ## stringr      "stringr"     
    ## survival     "survival"    
    ## sys          "sys"         
    ## tcltk        "tcltk"       
    ## tibble       "tibble"      
    ## tidyr        "tidyr"       
    ## tidyselect   "tidyselect"  
    ## tidyverse    "tidyverse"   
    ## tinytex      "tinytex"     
    ## tools        "tools"       
    ## utf8         "utf8"        
    ## utils        "utils"       
    ## vctrs        "vctrs"       
    ## viridisLite  "viridisLite" 
    ## whisker      "whisker"     
    ## withr        "withr"       
    ## xfun         "xfun"        
    ## xml2         "xml2"        
    ## yaml         "yaml"        
    ## zeallot      "zeallot"     
    ##              LibPath                                                         
    ## askpass      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## assertthat   "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## backports    "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## base         "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## base64enc    "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## BH           "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## boot         "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## broom        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## callr        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## cellranger   "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## class        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## cli          "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## clipr        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## cluster      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## codetools    "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## colorspace   "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## compiler     "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## crayon       "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## curl         "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## datasets     "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## DBI          "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## dbplyr       "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## digest       "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## dplyr        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## ellipsis     "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## evaluate     "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## fansi        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## forcats      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## foreign      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## fs           "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## generics     "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## ggplot2      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## glue         "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## graphics     "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## grDevices    "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## grid         "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## gtable       "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## haven        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## highr        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## hms          "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## htmltools    "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## httr         "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## jsonlite     "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## KernSmooth   "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## knitr        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## labeling     "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## lattice      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## lazyeval     "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## lubridate    "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## magrittr     "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## markdown     "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## MASS         "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## Matrix       "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## methods      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## mgcv         "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## mime         "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## modelr       "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## munsell      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## nlme         "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## nnet         "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## openssl      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## parallel     "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## pillar       "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## pkgconfig    "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## plogr        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## plyr         "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## prettyunits  "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## processx     "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## progress     "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## ps           "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## purrr        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## R6           "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## RColorBrewer "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## Rcpp         "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## readr        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## readxl       "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## rematch      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## reprex       "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## reshape2     "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## rlang        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## rmarkdown    "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## rpart        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## rstudioapi   "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## rvest        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## scales       "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## selectr      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## spatial      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## splines      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## stats        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## stats4       "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## stringi      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## stringr      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## survival     "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## sys          "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## tcltk        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## tibble       "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## tidyr        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## tidyselect   "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## tidyverse    "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## tinytex      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## tools        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## utf8         "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## utils        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## vctrs        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## viridisLite  "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## whisker      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## withr        "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## xfun         "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## xml2         "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## yaml         "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ## zeallot      "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
    ##              Version    Priority     
    ## askpass      "1.1"      NA           
    ## assertthat   "0.2.1"    NA           
    ## backports    "1.1.4"    NA           
    ## base         "3.6.0"    "base"       
    ## base64enc    "0.1-3"    NA           
    ## BH           "1.69.0-1" NA           
    ## boot         "1.3-22"   "recommended"
    ## broom        "0.5.2"    NA           
    ## callr        "3.2.0"    NA           
    ## cellranger   "1.1.0"    NA           
    ## class        "7.3-15"   "recommended"
    ## cli          "1.1.0"    NA           
    ## clipr        "0.6.0"    NA           
    ## cluster      "2.0.8"    "recommended"
    ## codetools    "0.2-16"   "recommended"
    ## colorspace   "1.4-1"    NA           
    ## compiler     "3.6.0"    "base"       
    ## crayon       "1.3.4"    NA           
    ## curl         "3.3"      NA           
    ## datasets     "3.6.0"    "base"       
    ## DBI          "1.0.0"    NA           
    ## dbplyr       "1.4.1"    NA           
    ## digest       "0.6.19"   NA           
    ## dplyr        "0.8.1"    NA           
    ## ellipsis     "0.1.0"    NA           
    ## evaluate     "0.14"     NA           
    ## fansi        "0.4.0"    NA           
    ## forcats      "0.4.0"    NA           
    ## foreign      "0.8-71"   "recommended"
    ## fs           "1.3.1"    NA           
    ## generics     "0.0.2"    NA           
    ## ggplot2      "3.1.1"    NA           
    ## glue         "1.3.1"    NA           
    ## graphics     "3.6.0"    "base"       
    ## grDevices    "3.6.0"    "base"       
    ## grid         "3.6.0"    "base"       
    ## gtable       "0.3.0"    NA           
    ## haven        "2.1.0"    NA           
    ## highr        "0.8"      NA           
    ## hms          "0.4.2"    NA           
    ## htmltools    "0.3.6"    NA           
    ## httr         "1.4.0"    NA           
    ## jsonlite     "1.6"      NA           
    ## KernSmooth   "2.23-15"  "recommended"
    ## knitr        "1.23"     NA           
    ## labeling     "0.3"      NA           
    ## lattice      "0.20-38"  "recommended"
    ## lazyeval     "0.2.2"    NA           
    ## lubridate    "1.7.4"    NA           
    ## magrittr     "1.5"      NA           
    ## markdown     "1.0"      NA           
    ## MASS         "7.3-51.4" "recommended"
    ## Matrix       "1.2-17"   "recommended"
    ## methods      "3.6.0"    "base"       
    ## mgcv         "1.8-28"   "recommended"
    ## mime         "0.6"      NA           
    ## modelr       "0.1.4"    NA           
    ## munsell      "0.5.0"    NA           
    ## nlme         "3.1-139"  "recommended"
    ## nnet         "7.3-12"   "recommended"
    ## openssl      "1.4"      NA           
    ## parallel     "3.6.0"    "base"       
    ## pillar       "1.4.1"    NA           
    ## pkgconfig    "2.0.2"    NA           
    ## plogr        "0.2.0"    NA           
    ## plyr         "1.8.4"    NA           
    ## prettyunits  "1.0.2"    NA           
    ## processx     "3.3.1"    NA           
    ## progress     "1.2.2"    NA           
    ## ps           "1.3.0"    NA           
    ## purrr        "0.3.2"    NA           
    ## R6           "2.4.0"    NA           
    ## RColorBrewer "1.1-2"    NA           
    ## Rcpp         "1.0.1"    NA           
    ## readr        "1.3.1"    NA           
    ## readxl       "1.3.1"    NA           
    ## rematch      "1.0.1"    NA           
    ## reprex       "0.3.0"    NA           
    ## reshape2     "1.4.3"    NA           
    ## rlang        "0.3.4"    NA           
    ## rmarkdown    "1.13"     NA           
    ## rpart        "4.1-15"   "recommended"
    ## rstudioapi   "0.10"     NA           
    ## rvest        "0.3.4"    NA           
    ## scales       "1.0.0"    NA           
    ## selectr      "0.4-1"    NA           
    ## spatial      "7.3-11"   "recommended"
    ## splines      "3.6.0"    "base"       
    ## stats        "3.6.0"    "base"       
    ## stats4       "3.6.0"    "base"       
    ## stringi      "1.4.3"    NA           
    ## stringr      "1.4.0"    NA           
    ## survival     "2.44-1.1" "recommended"
    ## sys          "3.2"      NA           
    ## tcltk        "3.6.0"    "base"       
    ## tibble       "2.1.3"    NA           
    ## tidyr        "0.8.3"    NA           
    ## tidyselect   "0.2.5"    NA           
    ## tidyverse    "1.2.1"    NA           
    ## tinytex      "0.13"     NA           
    ## tools        "3.6.0"    "base"       
    ## utf8         "1.1.4"    NA           
    ## utils        "3.6.0"    "base"       
    ## vctrs        "0.1.0"    NA           
    ## viridisLite  "0.3.0"    NA           
    ## whisker      "0.3-2"    NA           
    ## withr        "2.1.2"    NA           
    ## xfun         "0.7"      NA           
    ## xml2         "1.2.0"    NA           
    ## yaml         "2.2.0"    NA           
    ## zeallot      "0.1.0"    NA           
    ##              Depends                                          
    ## askpass      NA                                               
    ## assertthat   NA                                               
    ## backports    "R (>= 3.0.0)"                                   
    ## base         NA                                               
    ## base64enc    "R (>= 2.9.0)"                                   
    ## BH           NA                                               
    ## boot         "R (>= 3.0.0), graphics, stats"                  
    ## broom        "R (>= 3.1)"                                     
    ## callr        NA                                               
    ## cellranger   "R (>= 3.0.0)"                                   
    ## class        "R (>= 3.0.0), stats, utils"                     
    ## cli          "R (>= 2.10)"                                    
    ## clipr        NA                                               
    ## cluster      "R (>= 3.3.0)"                                   
    ## codetools    "R (>= 2.1)"                                     
    ## colorspace   "R (>= 3.0.0), methods"                          
    ## compiler     NA                                               
    ## crayon       NA                                               
    ## curl         "R (>= 3.0.0)"                                   
    ## datasets     NA                                               
    ## DBI          "R (>= 3.0.0), methods"                          
    ## dbplyr       "R (>= 3.1)"                                     
    ## digest       "R (>= 3.1.0)"                                   
    ## dplyr        "R (>= 3.2.0)"                                   
    ## ellipsis     "R (>= 3.1)"                                     
    ## evaluate     "R (>= 3.0.2)"                                   
    ## fansi        "R (>= 3.1.0)"                                   
    ## forcats      "R (>= 3.1)"                                     
    ## foreign      "R (>= 3.0.0)"                                   
    ## fs           "R (>= 3.1)"                                     
    ## generics     "R (>= 3.1)"                                     
    ## ggplot2      "R (>= 3.1)"                                     
    ## glue         "R (>= 3.1)"                                     
    ## graphics     NA                                               
    ## grDevices    NA                                               
    ## grid         NA                                               
    ## gtable       "R (>= 3.0)"                                     
    ## haven        "R (>= 3.1)"                                     
    ## highr        "R (>= 3.2.3)"                                   
    ## hms          NA                                               
    ## htmltools    "R (>= 2.14.1)"                                  
    ## httr         "R (>= 3.1)"                                     
    ## jsonlite     "methods"                                        
    ## KernSmooth   "R (>= 2.5.0), stats"                            
    ## knitr        "R (>= 3.2.3)"                                   
    ## labeling     NA                                               
    ## lattice      "R (>= 3.0.0)"                                   
    ## lazyeval     "R (>= 3.1.0)"                                   
    ## lubridate    "methods, R (>= 3.0.0)"                          
    ## magrittr     NA                                               
    ## markdown     "R (>= 2.11.1)"                                  
    ## MASS         "R (>= 3.1.0), grDevices, graphics, stats, utils"
    ## Matrix       "R (>= 3.2.0)"                                   
    ## methods      NA                                               
    ## mgcv         "R (>= 2.14.0), nlme (>= 3.1-64)"                
    ## mime         NA                                               
    ## modelr       "R (>= 3.1)"                                     
    ## munsell      NA                                               
    ## nlme         "R (>= 3.4.0)"                                   
    ## nnet         "R (>= 2.14.0), stats, utils"                    
    ## openssl      NA                                               
    ## parallel     NA                                               
    ## pillar       NA                                               
    ## pkgconfig    NA                                               
    ## plogr        NA                                               
    ## plyr         "R (>= 3.1.0)"                                   
    ## prettyunits  NA                                               
    ## processx     NA                                               
    ## progress     NA                                               
    ## ps           "R (>= 3.1)"                                     
    ## purrr        "R (>= 3.1)"                                     
    ## R6           "R (>= 3.0)"                                     
    ## RColorBrewer "R (>= 2.0.0)"                                   
    ## Rcpp         "R (>= 3.0.0)"                                   
    ## readr        "R (>= 3.1)"                                     
    ## readxl       NA                                               
    ## rematch      NA                                               
    ## reprex       "R (>= 3.1)"                                     
    ## reshape2     "R (>= 3.1)"                                     
    ## rlang        "R (>= 3.1.0)"                                   
    ## rmarkdown    "R (>= 3.0)"                                     
    ## rpart        "R (>= 2.15.0), graphics, stats, grDevices"      
    ## rstudioapi   NA                                               
    ## rvest        "R (>= 3.2), xml2"                               
    ## scales       "R (>= 3.1)"                                     
    ## selectr      "R (>= 3.0)"                                     
    ## spatial      "R (>= 3.0.0), graphics, stats, utils"           
    ## splines      NA                                               
    ## stats        NA                                               
    ## stats4       NA                                               
    ## stringi      "R (>= 2.14)"                                    
    ## stringr      "R (>= 3.1)"                                     
    ## survival     "R (>= 2.13.0)"                                  
    ## sys          NA                                               
    ## tcltk        NA                                               
    ## tibble       "R (>= 3.1.0)"                                   
    ## tidyr        "R (>= 3.1)"                                     
    ## tidyselect   "R (>= 3.1)"                                     
    ## tidyverse    NA                                               
    ## tinytex      NA                                               
    ## tools        NA                                               
    ## utf8         "R (>= 2.10)"                                    
    ## utils        NA                                               
    ## vctrs        "R (>= 3.1)"                                     
    ## viridisLite  "R (>= 2.10)"                                    
    ## whisker      NA                                               
    ## withr        "R (>= 3.0.2)"                                   
    ## xfun         NA                                               
    ## xml2         "R (>= 3.1.0)"                                   
    ## yaml         NA                                               
    ## zeallot      NA                                               
    ##              Imports                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## askpass      "sys (>= 2.1)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## assertthat   "tools"                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## backports    "utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## base         NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## base64enc    NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## BH           NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## boot         NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## broom        "backports, dplyr, generics (>= 0.0.2), methods, nlme, purrr,\nreshape2, stringr, tibble, tidyr"                                                                                                                                                                                                                                                                                                                                                                                      
    ## callr        "processx (>= 3.3.0), R6, utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                      
    ## cellranger   "rematch, tibble"                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
    ## class        "MASS"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    ## cli          "assertthat, crayon (>= 1.3.4), methods, utils"                                                                                                                                                                                                                                                                                                                                                                                                                                       
    ## clipr        "utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## cluster      "graphics, grDevices, stats, utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                   
    ## codetools    NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## colorspace   "graphics, grDevices, stats"                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    ## compiler     NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## crayon       "grDevices, methods, utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                           
    ## curl         NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## datasets     NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## DBI          NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## dbplyr       "assertthat (>= 0.2.0), DBI (>= 1.0.0), dplyr (>= 0.8.0), glue\n(>= 1.2.0), methods, purrr (>= 0.2.5), R6 (>= 2.2.2), rlang (>=\n0.2.0), tibble (>= 1.4.2), tidyselect (>= 0.2.4), utils"                                                                                                                                                                                                                                                                                             
    ## digest       NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## dplyr        "assertthat (>= 0.2.1), glue (>= 1.3.1), magrittr (>= 1.5),\nmethods, pkgconfig (>= 2.0.2), R6 (>= 2.4.0), Rcpp (>= 1.0.1),\nrlang (>= 0.3.4), tibble (>= 2.1.1), tidyselect (>= 0.2.5),\nutils"                                                                                                                                                                                                                                                                                      
    ## ellipsis     NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## evaluate     "methods"                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
    ## fansi        NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## forcats      "ellipsis, magrittr, rlang, tibble"                                                                                                                                                                                                                                                                                                                                                                                                                                                   
    ## foreign      "methods, utils, stats"                                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## fs           "methods, Rcpp"                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
    ## generics     "methods"                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
    ## ggplot2      "digest, grid, gtable (>= 0.1.1), lazyeval, MASS, mgcv, plyr\n(>= 1.7.1), reshape2, rlang (>= 0.2.1), scales (>= 0.5.0),\nstats, tibble, viridisLite, withr (>= 2.0.0)"                                                                                                                                                                                                                                                                                                               
    ## glue         "methods"                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
    ## graphics     "grDevices"                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
    ## grDevices    NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## grid         "grDevices, utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## gtable       "grid"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    ## haven        "forcats (>= 0.2.0), hms, Rcpp (>= 0.11.4), readr (>= 0.1.0),\ntibble"                                                                                                                                                                                                                                                                                                                                                                                                                
    ## highr        NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## hms          "methods, pkgconfig, rlang"                                                                                                                                                                                                                                                                                                                                                                                                                                                           
    ## htmltools    "utils, digest, Rcpp"                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
    ## httr         "curl (>= 0.9.1), jsonlite, mime, openssl (>= 0.8), R6"                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## jsonlite     NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## KernSmooth   NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## knitr        "evaluate (>= 0.10), highr, markdown, stringr (>= 0.6), yaml\n(>= 2.1.19), methods, xfun, tools"                                                                                                                                                                                                                                                                                                                                                                                      
    ## labeling     NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## lattice      "grid, grDevices, graphics, stats, utils"                                                                                                                                                                                                                                                                                                                                                                                                                                             
    ## lazyeval     NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## lubridate    "stringr, Rcpp (>= 0.12.13),"                                                                                                                                                                                                                                                                                                                                                                                                                                                         
    ## magrittr     NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## markdown     "utils, mime (>= 0.3)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    ## MASS         "methods"                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
    ## Matrix       "methods, graphics, grid, stats, utils, lattice"                                                                                                                                                                                                                                                                                                                                                                                                                                      
    ## methods      "utils, stats"                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## mgcv         "methods, stats, graphics, Matrix, splines, utils"                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## mime         "tools"                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## modelr       "broom, dplyr, magrittr, purrr (>= 0.2.2), rlang (>= 0.2.0),\ntibble, tidyr (>= 0.8.0)"                                                                                                                                                                                                                                                                                                                                                                                               
    ## munsell      "colorspace, methods"                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
    ## nlme         "graphics, stats, utils, lattice"                                                                                                                                                                                                                                                                                                                                                                                                                                                     
    ## nnet         NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## openssl      "askpass"                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
    ## parallel     "tools, compiler"                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
    ## pillar       "cli, crayon (>= 1.3.4), fansi, rlang (>= 0.3.0), utf8 (>=\n1.1.0), vctrs"                                                                                                                                                                                                                                                                                                                                                                                                            
    ## pkgconfig    "utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## plogr        NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## plyr         "Rcpp (>= 0.11.0)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## prettyunits  "magrittr, assertthat, methods"                                                                                                                                                                                                                                                                                                                                                                                                                                                       
    ## processx     "ps (>= 1.2.0), R6, utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## progress     "hms, prettyunits, R6, crayon"                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## ps           "utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## purrr        "magrittr (>= 1.5), rlang (>= 0.3.1)"                                                                                                                                                                                                                                                                                                                                                                                                                                                 
    ## R6           NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## RColorBrewer NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## Rcpp         "methods, utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
    ## readr        "Rcpp (>= 0.12.0.5), tibble, hms (>= 0.4.1), R6, clipr, crayon,\nmethods"                                                                                                                                                                                                                                                                                                                                                                                                             
    ## readxl       "cellranger, Rcpp (>= 0.12.18), tibble (>= 1.3.1), utils"                                                                                                                                                                                                                                                                                                                                                                                                                             
    ## rematch      NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## reprex       "callr (>= 2.0.0), clipr (>= 0.4.0), fs, rlang, rmarkdown,\nutils, whisker, withr"                                                                                                                                                                                                                                                                                                                                                                                                    
    ## reshape2     "plyr (>= 1.8.1), Rcpp, stringr"                                                                                                                                                                                                                                                                                                                                                                                                                                                      
    ## rlang        NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## rmarkdown    "tools, utils, knitr (>= 1.22), yaml (>= 2.1.19), htmltools (>=\n0.3.5), evaluate (>= 0.13), base64enc, jsonlite, mime, tinytex\n(>= 0.11), xfun, methods, stringr (>= 1.2.0)"                                                                                                                                                                                                                                                                                                        
    ## rpart        NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## rstudioapi   NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## rvest        "httr (>= 0.5), magrittr, selectr"                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## scales       "labeling, munsell (>= 0.5), R6, RColorBrewer, Rcpp,\nviridisLite"                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## selectr      "methods, stringr, R6"                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    ## spatial      NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## splines      "graphics, stats"                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
    ## stats        "utils, grDevices, graphics"                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    ## stats4       "graphics, methods, stats"                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## stringi      "tools, utils, stats"                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
    ## stringr      "glue (>= 1.2.0), magrittr, stringi (>= 1.1.7)"                                                                                                                                                                                                                                                                                                                                                                                                                                       
    ## survival     "graphics, Matrix, methods, splines, stats, utils"                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## sys          NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## tcltk        "utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## tibble       "cli, crayon (>= 1.3.4), fansi (>= 0.4.0), methods, pillar (>=\n1.3.1), pkgconfig, rlang (>= 0.3.0), utils"                                                                                                                                                                                                                                                                                                                                                                           
    ## tidyr        "dplyr (>= 0.7.0), glue, magrittr, purrr, Rcpp, rlang, stringi,\ntibble, tidyselect (>= 0.2.5), utils"                                                                                                                                                                                                                                                                                                                                                                                
    ## tidyselect   "glue (>= 1.3.0), purrr, rlang (>= 0.2.2), Rcpp (>= 0.12.0)"                                                                                                                                                                                                                                                                                                                                                                                                                          
    ## tidyverse    "broom (>= 0.4.2), cli (>= 1.0.0), crayon (>= 1.3.4), dplyr (>=\n0.7.4), dbplyr (>= 1.1.0), forcats (>= 0.2.0), ggplot2 (>=\n2.2.1), haven (>= 1.1.0), hms (>= 0.3), httr (>= 1.3.1),\njsonlite (>= 1.5), lubridate (>= 1.7.1), magrittr (>= 1.5),\nmodelr (>= 0.1.1), purrr (>= 0.2.4), readr (>= 1.1.1), readxl\n(>= 1.0.0), reprex (>= 0.1.1), rlang (>= 0.1.4), rstudioapi (>=\n0.7), rvest (>= 0.3.2), stringr (>= 1.2.0), tibble (>= 1.3.4),\ntidyr (>= 0.7.2), xml2 (>= 1.1.1)"
    ## tinytex      "xfun (>= 0.5)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
    ## tools        NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## utf8         NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## utils        NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## vctrs        "backports, digest, glue, rlang, zeallot"                                                                                                                                                                                                                                                                                                                                                                                                                                             
    ## viridisLite  NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## whisker      NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## withr        "stats, graphics, grDevices"                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    ## xfun         "tools"                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## xml2         "Rcpp"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    ## yaml         NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## zeallot      NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ##              LinkingTo                                            
    ## askpass      NA                                                   
    ## assertthat   NA                                                   
    ## backports    NA                                                   
    ## base         NA                                                   
    ## base64enc    NA                                                   
    ## BH           NA                                                   
    ## boot         NA                                                   
    ## broom        NA                                                   
    ## callr        NA                                                   
    ## cellranger   NA                                                   
    ## class        NA                                                   
    ## cli          NA                                                   
    ## clipr        NA                                                   
    ## cluster      NA                                                   
    ## codetools    NA                                                   
    ## colorspace   NA                                                   
    ## compiler     NA                                                   
    ## crayon       NA                                                   
    ## curl         NA                                                   
    ## datasets     NA                                                   
    ## DBI          NA                                                   
    ## dbplyr       NA                                                   
    ## digest       NA                                                   
    ## dplyr        "BH (>= 1.69.0-1), plogr (>= 0.2.0), Rcpp (>= 1.0.1)"
    ## ellipsis     NA                                                   
    ## evaluate     NA                                                   
    ## fansi        NA                                                   
    ## forcats      NA                                                   
    ## foreign      NA                                                   
    ## fs           "Rcpp"                                               
    ## generics     NA                                                   
    ## ggplot2      NA                                                   
    ## glue         NA                                                   
    ## graphics     NA                                                   
    ## grDevices    NA                                                   
    ## grid         NA                                                   
    ## gtable       NA                                                   
    ## haven        "Rcpp"                                               
    ## highr        NA                                                   
    ## hms          NA                                                   
    ## htmltools    "Rcpp"                                               
    ## httr         NA                                                   
    ## jsonlite     NA                                                   
    ## KernSmooth   NA                                                   
    ## knitr        NA                                                   
    ## labeling     NA                                                   
    ## lattice      NA                                                   
    ## lazyeval     NA                                                   
    ## lubridate    "Rcpp,"                                              
    ## magrittr     NA                                                   
    ## markdown     NA                                                   
    ## MASS         NA                                                   
    ## Matrix       NA                                                   
    ## methods      NA                                                   
    ## mgcv         NA                                                   
    ## mime         NA                                                   
    ## modelr       NA                                                   
    ## munsell      NA                                                   
    ## nlme         NA                                                   
    ## nnet         NA                                                   
    ## openssl      NA                                                   
    ## parallel     NA                                                   
    ## pillar       NA                                                   
    ## pkgconfig    NA                                                   
    ## plogr        NA                                                   
    ## plyr         "Rcpp"                                               
    ## prettyunits  NA                                                   
    ## processx     NA                                                   
    ## progress     NA                                                   
    ## ps           NA                                                   
    ## purrr        NA                                                   
    ## R6           NA                                                   
    ## RColorBrewer NA                                                   
    ## Rcpp         NA                                                   
    ## readr        "Rcpp, BH"                                           
    ## readxl       "progress, Rcpp"                                     
    ## rematch      NA                                                   
    ## reprex       NA                                                   
    ## reshape2     "Rcpp"                                               
    ## rlang        NA                                                   
    ## rmarkdown    NA                                                   
    ## rpart        NA                                                   
    ## rstudioapi   NA                                                   
    ## rvest        NA                                                   
    ## scales       "Rcpp"                                               
    ## selectr      NA                                                   
    ## spatial      NA                                                   
    ## splines      NA                                                   
    ## stats        NA                                                   
    ## stats4       NA                                                   
    ## stringi      NA                                                   
    ## stringr      NA                                                   
    ## survival     NA                                                   
    ## sys          NA                                                   
    ## tcltk        NA                                                   
    ## tibble       NA                                                   
    ## tidyr        "Rcpp"                                               
    ## tidyselect   "Rcpp (>= 0.12.0),"                                  
    ## tidyverse    NA                                                   
    ## tinytex      NA                                                   
    ## tools        NA                                                   
    ## utf8         NA                                                   
    ## utils        NA                                                   
    ## vctrs        NA                                                   
    ## viridisLite  NA                                                   
    ## whisker      NA                                                   
    ## withr        NA                                                   
    ## xfun         NA                                                   
    ## xml2         "Rcpp (>= 0.12.12)"                                  
    ## yaml         NA                                                   
    ## zeallot      NA                                                   
    ##              Suggests                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## askpass      "testthat"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    ## assertthat   "testthat, covr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    ## backports    NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## base         "methods"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
    ## base64enc    NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## BH           NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## boot         "MASS, survival"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    ## broom        "AER, akima, AUC, bbmle, betareg, biglm, binGroup, boot, brms,\nbtergm, car, caret, coda, covr, e1071, emmeans, ergm, gam (>=\n1.15), gamlss, gamlss.data, gamlss.dist, geepack, ggplot2,\nglmnet, gmm, Hmisc, irlba, joineRML, Kendall, knitr, ks,\nLahman, lavaan, lfe, lme4, lmodel2, lmtest, lsmeans, maps,\nmaptools, MASS, Matrix, mclust, mgcv, muhaz, multcomp, network,\nnnet, orcutt (>= 2.2), ordinal, plm, plyr, poLCA, psych,\nquantreg, rgeos, rmarkdown, robust, rsample, rstan, rstanarm,\nsp, speedglm, statnet.common, survey, survival, testthat,\ntseries, xergm, zoo"
    ## callr        "cliapp, covr, crayon, pingr, ps, testthat, withr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## cellranger   "covr, testthat (>= 1.0.0), knitr, rmarkdown"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
    ## class        NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## cli          "covr, fansi, mockery, testthat, webshot, withr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    ## clipr        "covr, knitr, rmarkdown, rstudioapi (>= 0.5), testthat (>=\n2.0.0)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
    ## cluster      "MASS, Matrix"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## codetools    NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## colorspace   "datasets, utils, KernSmooth, MASS, kernlab, mvtnorm, vcd,\ntcltk, shiny, shinyjs, ggplot2, dplyr, scales, grid, png, jpeg,\nknitr, rmarkdown, RColorBrewer, rcartocolor, scico, viridis,\nwesanderson"                                                                                                                                                                                                                                                                                                                                                                                   
    ## compiler     NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## crayon       "mockery, rstudioapi, testthat, withr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## curl         "spelling, testthat (>= 1.0.0), knitr, jsonlite, rmarkdown,\nmagrittr, httpuv (>= 1.4.4), webutils"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
    ## datasets     NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## DBI          "blob, covr, hms, knitr, magrittr, rprojroot, rmarkdown,\nRSQLite (>= 1.1-2), testthat, xml2"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
    ## dbplyr       "bit64, covr, knitr, Lahman, nycflights13, RMariaDB (>=\n1.0.2), rmarkdown, RMySQL (>= 0.10.11), RPostgreSQL (>= 0.4.1),\nRSQLite (>= 2.1.0), testthat (>= 2.0.0), withr (>= 2.1.2)"                                                                                                                                                                                                                                                                                                                                                                                                      
    ## digest       "knitr, rmarkdown"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## dplyr        "bit64 (>= 0.9-7), callr (>= 3.2.0), covr (>= 3.2.1), DBI (>=\n1.0.0), dbplyr (>= 1.4.0), dtplyr (>= 0.0.3), ggplot2 (>=\n3.1.1), hms (>= 0.4.2), knitr (>= 1.22), Lahman (>= 6.0-0),\nlubridate (>= 1.7.4), MASS, mgcv (>= 1.8.23), microbenchmark\n(>= 1.4-6), nycflights13 (>= 1.0.0), rmarkdown (>= 1.12),\nRMySQL (>= 0.10.17), RPostgreSQL (>= 0.6-2), RSQLite (>=\n2.1.1), testthat (>= 2.1.1), withr (>= 2.1.2), broom (>=\n0.5.2), purrr (>= 0.3.2), readr (>= 1.3.1), crayon (>= 1.3.4)"                                                                                        
    ## ellipsis     "covr, testthat"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    ## evaluate     "testthat, lattice, ggplot2"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
    ## fansi        "unitizer, knitr, rmarkdown"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
    ## forcats      "covr, ggplot2, testthat, readr, knitr, rmarkdown, dplyr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
    ## foreign      NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## fs           "testthat, covr, pillar (>= 1.0.0), crayon, rmarkdown, knitr,\nwithr, spelling"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
    ## generics     "covr, pkgload, testthat, tibble"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
    ## ggplot2      "covr, dplyr, ggplot2movies, hexbin, Hmisc, lattice, mapproj,\nmaps, maptools, multcomp, munsell, nlme, testthat (>= 0.11.0),\nvdiffr, quantreg, knitr, rgeos, rpart, rmarkdown, sf (>=\n0.3-4), svglite (>= 1.2.0.9001)"                                                                                                                                                                                                                                                                                                                                                                 
    ## glue         "testthat, covr, magrittr, crayon, knitr, rmarkdown, DBI,\nRSQLite, R.utils, forcats, microbenchmark, rprintf, stringr,\nggplot2, dplyr, withr"                                                                                                                                                                                                                                                                                                                                                                                                                                           
    ## graphics     NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## grDevices    "KernSmooth"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
    ## grid         "lattice"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
    ## gtable       "covr, testthat, knitr, rmarkdown, ggplot2, profvis"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
    ## haven        "covr, fs, knitr, rmarkdown, testthat, pillar (>= 1.1.1), cli,\ncrayon"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
    ## highr        "knitr, testit"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
    ## hms          "crayon, lubridate, pillar (>= 1.1.0), testthat"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    ## htmltools    "markdown, testthat"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
    ## httr         "covr, httpuv, jpeg, knitr, png, readr, rmarkdown, testthat\n(>= 0.8.0), xml2"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## jsonlite     "httr, curl, plyr, testthat, knitr, rmarkdown, R.rsp, sp"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
    ## KernSmooth   "MASS"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## knitr        "formatR, testit, digest, rgl (>= 0.95.1201), codetools,\nrmarkdown, htmlwidgets (>= 0.7), webshot, tikzDevice (>= 0.10),\ntinytex, reticulate (>= 1.4), JuliaCall (>= 0.11.1), magick,\npng, jpeg, gifski, xml2 (>= 1.2.0), httr, DBI (>= 0.4-1),\nshowtext, tibble, styler"                                                                                                                                                                                                                                                                                                             
    ## labeling     NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## lattice      "KernSmooth, MASS, latticeExtra"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    ## lazyeval     "knitr, rmarkdown (>= 0.2.65), testthat, covr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## lubridate    "testthat, knitr, covr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
    ## magrittr     "testthat, knitr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
    ## markdown     "knitr, RCurl"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ## MASS         "lattice, nlme, nnet, survival"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
    ## Matrix       "expm, MASS"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
    ## methods      "codetools"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## mgcv         "parallel, survival, MASS"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    ## mime         NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## modelr       "compiler, covr, ggplot2, testthat"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
    ## munsell      "ggplot2, testthat"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
    ## nlme         "Hmisc, MASS"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
    ## nnet         "MASS"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## openssl      "testthat, digest, knitr, rmarkdown, jsonlite, jose, sodium"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
    ## parallel     "methods"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
    ## pillar       "knitr, lubridate, testthat, withr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
    ## pkgconfig    "covr, testthat, disposables (>= 1.0.3)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## plogr        "Rcpp"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## plyr         "abind, testthat, tcltk, foreach, doParallel, itertools,\niterators, covr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    ## prettyunits  "testthat"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    ## processx     "callr, covr, crayon, curl, debugme, parallel, testthat, withr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
    ## progress     "Rcpp, testthat, withr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
    ## ps           "callr, covr, curl, pingr, processx (>= 3.1.0), R6, rlang,\ntestthat, tibble"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
    ## purrr        "covr, crayon, dplyr (>= 0.7.8), knitr, rmarkdown, testthat,\ntibble, tidyselect"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
    ## R6           "knitr, microbenchmark, pryr, testthat, ggplot2, scales"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## RColorBrewer NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## Rcpp         "RUnit, inline, rbenchmark, knitr, rmarkdown, pinp, pkgKitten\n(>= 0.1.2)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    ## readr        "curl, testthat, knitr, rmarkdown, stringi, covr, spelling"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## readxl       "covr, knitr, rmarkdown, rprojroot (>= 1.1), testthat"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## rematch      "covr, testthat"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    ## reprex       "covr, devtools, fortunes, knitr, miniUI, rprojroot,\nrstudioapi, shiny, styler (>= 1.0.2), testthat (>= 2.0.0)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    ## reshape2     "covr, lattice, testthat (>= 0.8.0)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
    ## rlang        "covr, crayon, magrittr, methods, pillar, rmarkdown, testthat\n(>= 2.0.0)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    ## rmarkdown    "shiny (>= 0.11), tufte, testthat, digest, dygraphs, tibble,\nfs, callr (>= 2.0.0)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
    ## rpart        "survival"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    ## rstudioapi   "testthat, knitr, rmarkdown"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
    ## rvest        "covr, knitr, png, rmarkdown, spelling, stringi (>= 0.3.1),\ntestthat"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## scales       "dichromat, bit64, covr, hms, testthat (>= 2.0)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    ## selectr      "testthat, XML, xml2"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
    ## spatial      "MASS"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## splines      "Matrix, methods"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
    ## stats        "MASS, Matrix, SuppDists, methods, stats4"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    ## stats4       NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## stringi      NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## stringr      "covr, htmltools, htmlwidgets, knitr, rmarkdown, testthat"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    ## survival     NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## sys          "unix (>= 1.4), spelling, testthat"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
    ## tcltk        NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    ## tibble       "bench, covr, dplyr, htmltools, import, knitr, mockr,\nnycflights13, rmarkdown, testthat, withr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    ## tidyr        "covr, gapminder, knitr, rmarkdown, testthat"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
    ## tidyselect   "covr, dplyr, testthat"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
    ## tidyverse    "feather (>= 0.3.1), knitr (>= 1.17), rmarkdown (>= 1.7.4)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## tinytex      "testit, rstudioapi"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
    ## tools        "codetools, methods, xml2, curl, commonmark"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
    ## utf8         "knitr, rmarkdown, testthat"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
    ## utils        "methods, xml2, commonmark"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
    ## vctrs        "covr, generics, knitr, pillar, pkgdown, rmarkdown, testthat,\ntibble"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## viridisLite  "hexbin (>= 1.27.0), ggplot2 (>= 1.0.1), testthat, covr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## whisker      "markdown"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    ## withr        "testthat, covr, lattice, DBI, RSQLite, methods, knitr,\nrmarkdown"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
    ## xfun         "testit, parallel, rstudioapi, tinytex, mime, markdown, knitr,\nhtmltools, base64enc, remotes, rmarkdown"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
    ## xml2         "testthat, curl, covr, knitr, rmarkdown, magrittr, httr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    ## yaml         "RUnit"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
    ## zeallot      "testthat, knitr, rmarkdown, purrr, magrittr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
    ##              Enhances                                                  
    ## askpass      NA                                                        
    ## assertthat   NA                                                        
    ## backports    NA                                                        
    ## base         NA                                                        
    ## base64enc    "png"                                                     
    ## BH           NA                                                        
    ## boot         NA                                                        
    ## broom        NA                                                        
    ## callr        NA                                                        
    ## cellranger   NA                                                        
    ## class        NA                                                        
    ## cli          NA                                                        
    ## clipr        NA                                                        
    ## cluster      NA                                                        
    ## codetools    NA                                                        
    ## colorspace   NA                                                        
    ## compiler     NA                                                        
    ## crayon       NA                                                        
    ## curl         NA                                                        
    ## datasets     NA                                                        
    ## DBI          NA                                                        
    ## dbplyr       NA                                                        
    ## digest       NA                                                        
    ## dplyr        NA                                                        
    ## ellipsis     NA                                                        
    ## evaluate     NA                                                        
    ## fansi        NA                                                        
    ## forcats      NA                                                        
    ## foreign      NA                                                        
    ## fs           NA                                                        
    ## generics     NA                                                        
    ## ggplot2      "sp"                                                      
    ## glue         NA                                                        
    ## graphics     NA                                                        
    ## grDevices    NA                                                        
    ## grid         NA                                                        
    ## gtable       NA                                                        
    ## haven        NA                                                        
    ## highr        NA                                                        
    ## hms          NA                                                        
    ## htmltools    "knitr"                                                   
    ## httr         NA                                                        
    ## jsonlite     NA                                                        
    ## KernSmooth   NA                                                        
    ## knitr        NA                                                        
    ## labeling     NA                                                        
    ## lattice      "chron"                                                   
    ## lazyeval     NA                                                        
    ## lubridate    "chron, fts, timeSeries, timeDate, tis, tseries, xts, zoo"
    ## magrittr     NA                                                        
    ## markdown     NA                                                        
    ## MASS         NA                                                        
    ## Matrix       "MatrixModels, graph, SparseM, sfsmisc"                   
    ## methods      NA                                                        
    ## mgcv         NA                                                        
    ## mime         NA                                                        
    ## modelr       NA                                                        
    ## munsell      NA                                                        
    ## nlme         NA                                                        
    ## nnet         NA                                                        
    ## openssl      NA                                                        
    ## parallel     "snow, nws, Rmpi"                                         
    ## pillar       NA                                                        
    ## pkgconfig    NA                                                        
    ## plogr        NA                                                        
    ## plyr         NA                                                        
    ## prettyunits  NA                                                        
    ## processx     NA                                                        
    ## progress     NA                                                        
    ## ps           NA                                                        
    ## purrr        NA                                                        
    ## R6           NA                                                        
    ## RColorBrewer NA                                                        
    ## Rcpp         NA                                                        
    ## readr        NA                                                        
    ## readxl       NA                                                        
    ## rematch      NA                                                        
    ## reprex       NA                                                        
    ## reshape2     NA                                                        
    ## rlang        NA                                                        
    ## rmarkdown    NA                                                        
    ## rpart        NA                                                        
    ## rstudioapi   NA                                                        
    ## rvest        NA                                                        
    ## scales       NA                                                        
    ## selectr      NA                                                        
    ## spatial      NA                                                        
    ## splines      NA                                                        
    ## stats        NA                                                        
    ## stats4       NA                                                        
    ## stringi      NA                                                        
    ## stringr      NA                                                        
    ## survival     NA                                                        
    ## sys          NA                                                        
    ## tcltk        NA                                                        
    ## tibble       NA                                                        
    ## tidyr        NA                                                        
    ## tidyselect   NA                                                        
    ## tidyverse    NA                                                        
    ## tinytex      NA                                                        
    ## tools        NA                                                        
    ## utf8         NA                                                        
    ## utils        NA                                                        
    ## vctrs        NA                                                        
    ## viridisLite  NA                                                        
    ## whisker      NA                                                        
    ## withr        NA                                                        
    ## xfun         NA                                                        
    ## xml2         NA                                                        
    ## yaml         NA                                                        
    ## zeallot      NA                                                        
    ##              License                                  License_is_FOSS
    ## askpass      "MIT + file LICENSE"                     NA             
    ## assertthat   "GPL-3"                                  NA             
    ## backports    "GPL-2"                                  NA             
    ## base         "Part of R 3.6.0"                        NA             
    ## base64enc    "GPL-2 | GPL-3"                          NA             
    ## BH           "BSL-1.0"                                NA             
    ## boot         "Unlimited"                              NA             
    ## broom        "MIT + file LICENSE"                     NA             
    ## callr        "MIT + file LICENSE"                     NA             
    ## cellranger   "MIT + file LICENSE"                     NA             
    ## class        "GPL-2 | GPL-3"                          NA             
    ## cli          "MIT + file LICENSE"                     NA             
    ## clipr        "GPL-3"                                  NA             
    ## cluster      "GPL (>= 2)"                             NA             
    ## codetools    "GPL"                                    NA             
    ## colorspace   "BSD_3_clause + file LICENSE"            NA             
    ## compiler     "Part of R 3.6.0"                        NA             
    ## crayon       "MIT + file LICENSE"                     NA             
    ## curl         "MIT + file LICENSE"                     NA             
    ## datasets     "Part of R 3.6.0"                        NA             
    ## DBI          "LGPL (>= 2)"                            NA             
    ## dbplyr       "MIT + file LICENSE"                     NA             
    ## digest       "GPL (>= 2)"                             NA             
    ## dplyr        "MIT + file LICENSE"                     NA             
    ## ellipsis     "GPL-3"                                  NA             
    ## evaluate     "MIT + file LICENSE"                     NA             
    ## fansi        "GPL (>= 2)"                             NA             
    ## forcats      "GPL-3"                                  NA             
    ## foreign      "GPL (>= 2)"                             NA             
    ## fs           "GPL-3"                                  NA             
    ## generics     "GPL-2"                                  NA             
    ## ggplot2      "GPL-2 | file LICENSE"                   NA             
    ## glue         "MIT + file LICENSE"                     NA             
    ## graphics     "Part of R 3.6.0"                        NA             
    ## grDevices    "Part of R 3.6.0"                        NA             
    ## grid         "Part of R 3.6.0"                        NA             
    ## gtable       "GPL-2"                                  NA             
    ## haven        "MIT + file LICENSE"                     NA             
    ## highr        "GPL"                                    NA             
    ## hms          "GPL-3"                                  NA             
    ## htmltools    "GPL (>= 2)"                             NA             
    ## httr         "MIT + file LICENSE"                     NA             
    ## jsonlite     "MIT + file LICENSE"                     NA             
    ## KernSmooth   "Unlimited"                              NA             
    ## knitr        "GPL"                                    NA             
    ## labeling     "MIT + file LICENSE | Unlimited"         NA             
    ## lattice      "GPL (>= 2)"                             NA             
    ## lazyeval     "GPL-3"                                  NA             
    ## lubridate    "GPL (>= 2)"                             NA             
    ## magrittr     "MIT + file LICENSE"                     NA             
    ## markdown     "GPL-2"                                  NA             
    ## MASS         "GPL-2 | GPL-3"                          NA             
    ## Matrix       "GPL (>= 2) | file LICENCE"              NA             
    ## methods      "Part of R 3.6.0"                        NA             
    ## mgcv         "GPL (>= 2)"                             NA             
    ## mime         "GPL"                                    NA             
    ## modelr       "GPL-3"                                  NA             
    ## munsell      "MIT + file LICENSE"                     NA             
    ## nlme         "GPL (>= 2) | file LICENCE"              NA             
    ## nnet         "GPL-2 | GPL-3"                          NA             
    ## openssl      "MIT + file LICENSE"                     NA             
    ## parallel     "Part of R 3.6.0"                        NA             
    ## pillar       "GPL-3"                                  NA             
    ## pkgconfig    "MIT + file LICENSE"                     NA             
    ## plogr        "MIT + file LICENSE"                     NA             
    ## plyr         "MIT + file LICENSE"                     NA             
    ## prettyunits  "MIT + file LICENSE"                     NA             
    ## processx     "MIT + file LICENSE"                     NA             
    ## progress     "MIT + file LICENSE"                     NA             
    ## ps           "BSD_3_clause + file LICENSE"            NA             
    ## purrr        "GPL-3 | file LICENSE"                   NA             
    ## R6           "MIT + file LICENSE"                     NA             
    ## RColorBrewer "Apache License 2.0"                     NA             
    ## Rcpp         "GPL (>= 2)"                             NA             
    ## readr        "GPL (>= 2) | file LICENSE"              NA             
    ## readxl       "GPL-3"                                  NA             
    ## rematch      "MIT + file LICENSE"                     NA             
    ## reprex       "MIT + file LICENSE"                     NA             
    ## reshape2     "MIT + file LICENSE"                     NA             
    ## rlang        "GPL-3"                                  NA             
    ## rmarkdown    "GPL-3"                                  NA             
    ## rpart        "GPL-2 | GPL-3"                          NA             
    ## rstudioapi   "MIT + file LICENSE"                     NA             
    ## rvest        "GPL-3"                                  NA             
    ## scales       "MIT + file LICENSE"                     NA             
    ## selectr      "BSD_3_clause + file LICENCE"            NA             
    ## spatial      "GPL-2 | GPL-3"                          NA             
    ## splines      "Part of R 3.6.0"                        NA             
    ## stats        "Part of R 3.6.0"                        NA             
    ## stats4       "Part of R 3.6.0"                        NA             
    ## stringi      "file LICENSE"                           "yes"          
    ## stringr      "GPL-2 | file LICENSE"                   NA             
    ## survival     "LGPL (>= 2)"                            NA             
    ## sys          "MIT + file LICENSE"                     NA             
    ## tcltk        "Part of R 3.6.0"                        NA             
    ## tibble       "MIT + file LICENSE"                     NA             
    ## tidyr        "MIT + file LICENSE"                     NA             
    ## tidyselect   "GPL-3"                                  NA             
    ## tidyverse    "GPL-3 | file LICENSE"                   NA             
    ## tinytex      "MIT + file LICENSE"                     NA             
    ## tools        "Part of R 3.6.0"                        NA             
    ## utf8         "Apache License (== 2.0) | file LICENSE" NA             
    ## utils        "Part of R 3.6.0"                        NA             
    ## vctrs        "GPL-3"                                  NA             
    ## viridisLite  "MIT + file LICENSE"                     NA             
    ## whisker      "GPL-3"                                  NA             
    ## withr        "GPL (>= 2)"                             NA             
    ## xfun         "MIT + file LICENSE"                     NA             
    ## xml2         "GPL (>= 2)"                             NA             
    ## yaml         "BSD_3_clause + file LICENSE"            NA             
    ## zeallot      "MIT + file LICENSE"                     NA             
    ##              License_restricts_use OS_type MD5sum NeedsCompilation Built  
    ## askpass      NA                    NA      NA     "yes"            "3.6.0"
    ## assertthat   NA                    NA      NA     "no"             "3.6.0"
    ## backports    NA                    NA      NA     "yes"            "3.6.0"
    ## base         NA                    NA      NA     NA               "3.6.0"
    ## base64enc    NA                    NA      NA     "yes"            "3.6.0"
    ## BH           NA                    NA      NA     "no"             "3.6.0"
    ## boot         NA                    NA      NA     "no"             "3.6.0"
    ## broom        NA                    NA      NA     "no"             "3.6.0"
    ## callr        NA                    NA      NA     "no"             "3.6.0"
    ## cellranger   NA                    NA      NA     "no"             "3.6.0"
    ## class        NA                    NA      NA     "yes"            "3.6.0"
    ## cli          NA                    NA      NA     "no"             "3.6.0"
    ## clipr        NA                    NA      NA     "no"             "3.6.0"
    ## cluster      NA                    NA      NA     "yes"            "3.6.0"
    ## codetools    NA                    NA      NA     "no"             "3.6.0"
    ## colorspace   NA                    NA      NA     "yes"            "3.6.0"
    ## compiler     NA                    NA      NA     NA               "3.6.0"
    ## crayon       NA                    NA      NA     "no"             "3.6.0"
    ## curl         NA                    NA      NA     "yes"            "3.6.0"
    ## datasets     NA                    NA      NA     NA               "3.6.0"
    ## DBI          NA                    NA      NA     "no"             "3.6.0"
    ## dbplyr       NA                    NA      NA     "no"             "3.6.0"
    ## digest       NA                    NA      NA     "yes"            "3.6.0"
    ## dplyr        NA                    NA      NA     "yes"            "3.6.0"
    ## ellipsis     NA                    NA      NA     "yes"            "3.6.0"
    ## evaluate     NA                    NA      NA     "no"             "3.6.0"
    ## fansi        NA                    NA      NA     "yes"            "3.6.0"
    ## forcats      NA                    NA      NA     "no"             "3.6.0"
    ## foreign      NA                    NA      NA     "yes"            "3.6.0"
    ## fs           NA                    NA      NA     "yes"            "3.6.0"
    ## generics     NA                    NA      NA     "no"             "3.6.0"
    ## ggplot2      NA                    NA      NA     "no"             "3.6.0"
    ## glue         NA                    NA      NA     "yes"            "3.6.0"
    ## graphics     NA                    NA      NA     "yes"            "3.6.0"
    ## grDevices    NA                    NA      NA     "yes"            "3.6.0"
    ## grid         NA                    NA      NA     "yes"            "3.6.0"
    ## gtable       NA                    NA      NA     "no"             "3.6.0"
    ## haven        NA                    NA      NA     "yes"            "3.6.0"
    ## highr        NA                    NA      NA     "no"             "3.6.0"
    ## hms          NA                    NA      NA     "no"             "3.6.0"
    ## htmltools    NA                    NA      NA     "yes"            "3.6.0"
    ## httr         NA                    NA      NA     "no"             "3.6.0"
    ## jsonlite     NA                    NA      NA     "yes"            "3.6.0"
    ## KernSmooth   NA                    NA      NA     "yes"            "3.6.0"
    ## knitr        NA                    NA      NA     "no"             "3.6.0"
    ## labeling     NA                    NA      NA     "no"             "3.6.0"
    ## lattice      NA                    NA      NA     "yes"            "3.6.0"
    ## lazyeval     NA                    NA      NA     "yes"            "3.6.0"
    ## lubridate    NA                    NA      NA     "yes"            "3.6.0"
    ## magrittr     NA                    NA      NA     "no"             "3.6.0"
    ## markdown     NA                    NA      NA     "yes"            "3.6.0"
    ## MASS         NA                    NA      NA     "yes"            "3.6.0"
    ## Matrix       NA                    NA      NA     "yes"            "3.6.0"
    ## methods      NA                    NA      NA     "yes"            "3.6.0"
    ## mgcv         NA                    NA      NA     "yes"            "3.6.0"
    ## mime         NA                    NA      NA     "yes"            "3.6.0"
    ## modelr       NA                    NA      NA     "no"             "3.6.0"
    ## munsell      NA                    NA      NA     "no"             "3.6.0"
    ## nlme         NA                    NA      NA     "yes"            "3.6.0"
    ## nnet         NA                    NA      NA     "yes"            "3.6.0"
    ## openssl      NA                    NA      NA     "yes"            "3.6.0"
    ## parallel     NA                    NA      NA     "yes"            "3.6.0"
    ## pillar       NA                    NA      NA     "no"             "3.6.0"
    ## pkgconfig    NA                    NA      NA     "no"             "3.6.0"
    ## plogr        NA                    NA      NA     "no"             "3.6.0"
    ## plyr         NA                    NA      NA     "yes"            "3.6.0"
    ## prettyunits  NA                    NA      NA     "no"             "3.6.0"
    ## processx     NA                    NA      NA     "yes"            "3.6.0"
    ## progress     NA                    NA      NA     "no"             "3.6.0"
    ## ps           NA                    NA      NA     "yes"            "3.6.0"
    ## purrr        NA                    NA      NA     "yes"            "3.6.0"
    ## R6           NA                    NA      NA     "no"             "3.6.0"
    ## RColorBrewer NA                    NA      NA     "no"             "3.6.0"
    ## Rcpp         NA                    NA      NA     "yes"            "3.6.0"
    ## readr        NA                    NA      NA     "yes"            "3.6.0"
    ## readxl       NA                    NA      NA     "yes"            "3.6.0"
    ## rematch      NA                    NA      NA     "no"             "3.6.0"
    ## reprex       NA                    NA      NA     "no"             "3.6.0"
    ## reshape2     NA                    NA      NA     "yes"            "3.6.0"
    ## rlang        NA                    NA      NA     "yes"            "3.6.0"
    ## rmarkdown    NA                    NA      NA     "no"             "3.6.0"
    ## rpart        NA                    NA      NA     "yes"            "3.6.0"
    ## rstudioapi   NA                    NA      NA     "no"             "3.6.0"
    ## rvest        NA                    NA      NA     "no"             "3.6.0"
    ## scales       NA                    NA      NA     "yes"            "3.6.0"
    ## selectr      NA                    NA      NA     "no"             "3.6.0"
    ## spatial      NA                    NA      NA     "yes"            "3.6.0"
    ## splines      NA                    NA      NA     "yes"            "3.6.0"
    ## stats        NA                    NA      NA     "yes"            "3.6.0"
    ## stats4       NA                    NA      NA     NA               "3.6.0"
    ## stringi      NA                    NA      NA     "yes"            "3.6.0"
    ## stringr      NA                    NA      NA     "no"             "3.6.0"
    ## survival     NA                    NA      NA     "yes"            "3.6.0"
    ## sys          NA                    NA      NA     "yes"            "3.6.0"
    ## tcltk        NA                    NA      NA     "yes"            "3.6.0"
    ## tibble       NA                    NA      NA     "yes"            "3.6.0"
    ## tidyr        NA                    NA      NA     "yes"            "3.6.0"
    ## tidyselect   NA                    NA      NA     "yes"            "3.6.0"
    ## tidyverse    NA                    NA      NA     "no"             "3.6.0"
    ## tinytex      NA                    NA      NA     "no"             "3.6.0"
    ## tools        NA                    NA      NA     "yes"            "3.6.0"
    ## utf8         NA                    NA      NA     "yes"            "3.6.0"
    ## utils        NA                    NA      NA     "yes"            "3.6.0"
    ## vctrs        NA                    NA      NA     "yes"            "3.6.0"
    ## viridisLite  NA                    NA      NA     "no"             "3.6.0"
    ## whisker      NA                    NA      NA     "no"             "3.6.0"
    ## withr        NA                    NA      NA     "no"             "3.6.0"
    ## xfun         NA                    NA      NA     "no"             "3.6.0"
    ## xml2         NA                    NA      NA     "yes"            "3.6.0"
    ## yaml         NA                    NA      NA     "yes"            "3.6.0"
    ## zeallot      NA                    NA      NA     "no"             "3.6.0"

``` r
ipt <- installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority, Built)
  
ipt
```

    ## # A tibble: 111 x 5
    ##    Package   LibPath                                Version Priority  Built
    ##    <chr>     <chr>                                  <chr>   <chr>     <chr>
    ##  1 askpass   /Library/Frameworks/R.framework/Versi… 1.1     <NA>      3.6.0
    ##  2 assertth… /Library/Frameworks/R.framework/Versi… 0.2.1   <NA>      3.6.0
    ##  3 backports /Library/Frameworks/R.framework/Versi… 1.1.4   <NA>      3.6.0
    ##  4 base      /Library/Frameworks/R.framework/Versi… 3.6.0   base      3.6.0
    ##  5 base64enc /Library/Frameworks/R.framework/Versi… 0.1-3   <NA>      3.6.0
    ##  6 BH        /Library/Frameworks/R.framework/Versi… 1.69.0… <NA>      3.6.0
    ##  7 boot      /Library/Frameworks/R.framework/Versi… 1.3-22  recommen… 3.6.0
    ##  8 broom     /Library/Frameworks/R.framework/Versi… 0.5.2   <NA>      3.6.0
    ##  9 callr     /Library/Frameworks/R.framework/Versi… 3.2.0   <NA>      3.6.0
    ## 10 cellrang… /Library/Frameworks/R.framework/Versi… 1.1.0   <NA>      3.6.0
    ## # … with 101 more rows

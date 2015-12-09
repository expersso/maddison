## Test environments
* Windows 7 

## R CMD check results
There were no ERRORs or WARNINGs. 

## Second submission

* Added URL to Maddison Project in DESCRIPTION

* Was unable to reproduce the error encountered by CRAN when re-building 
the vignette:

"Error in re-building vignettes:
  ...
Quitting from lines 39-64 (maddison_project_database.Rmd)
Error: processing vignette ‘maddison_project_database.Rmd’ failed with diagnostics:
'from' cannot be NA, NaN or infinite
Execution halted"

* Removed dependency on packages dplyr and scales, and removed all non-essential
code in vignette that may be causing the error.
* Removed non-ASCII character in vignette
## This script lets you install the packages necessary to participate in GENESTAT
## Unfortunately, we will not have time to help you "live" during the lectures. 
## Therefore, it is very important that you ensure that this script runs successfully BEFORE the first lecture on November 30

## These lines clears console and history
cat("\014")
rm(list = ls(all.names = TRUE))

## Installs necessary packages
install.packages(pkgs = c("Haplin","dplyr","tidyr","readr"))
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
BiocManager::install("snpStats", update = FALSE)

## Loading packages and checking that they are loaded
## Loading
library(Haplin)
library(dplyr)
library(tidyr)
library(readr)
## Checking
## packageVersion should return version the version of the package
## If packageVersion returns error or warning, please consult your nearest R expert
packageVersion("Haplin")
packageVersion("dplyr")
packageVersion("tidyr")
packageVersion("readr")

## Plotting some data based on data stored in mtcars
plot(mpg~hp, data = mtcars, col = cyl, lwd = 2)




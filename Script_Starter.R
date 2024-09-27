#### R script used to demonstrate a useful header and setup code for each script
# Developed by Ben Block, Tetra Tech; Ben.Block@tetratech.com
# Date created: 09/27/2024
# Date last updated: 09/27/2024
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# R version 4.4.1 (2024-06-14) -- "Race for Your Life"

# Libraries needed
library(dplyr)
library(readxl)
library(readr)
library(tidyr)
library(stringr)

# Declare directories ####
wd <- getwd()
myDate <- format(Sys.Date(), "%Y%m%d")
input.dir <- "Input_Data"
output.dir <- "Output_Data"
results.dir <- paste0("/Sample_Results_",myDate,"/")

# create results folder
boo_Results <- dir.exists(file.path(wd, output.dir, results.dir))
if(boo_Results==FALSE){
  dir.create(file.path(wd, output.dir, results.dir))
}

# specify input files
fn.data1 <- "Dataset1.csv"
fn.data2 <- "Dataset2.csv"
fn.data3 <- "Dataset3.xlsx"

# Read data files ####
df_data1 <- read_csv(file.path(wd, input.dir, fn.data1)
                   , na = c("NA",""), trim_ws = TRUE, skip = 0
                   , col_names = TRUE, guess_max = 100000)

df_data2 <- read_csv(file.path(wd, input.dir, fn.data2)
                     , na = c("NA",""), trim_ws = TRUE, skip = 0
                     , col_names = TRUE, guess_max = 100000)

df_data3 <- read_excel(file.path(wd, input.dir, fn.data3)
                         , na = c("NA",""), trim_ws = TRUE, skip = 0
                         , col_names = TRUE, guess_max = 100000)

# cleanup
rm(fn.data1, fn.data2, fn.data3, input.dir)

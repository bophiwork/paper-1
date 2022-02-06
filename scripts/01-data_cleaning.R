#### Preamble ####
# Purpose: Clean the survey data downloaded from Open Data Toronto
# Author: Bo Phi
# Data: 1/31/2022
# Contact: bo.phi@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the ACS data and saved it to inputs/data
# - Don't forget to gitignore it!
# - Change these to yours
# Any other information needed?


#### Workspace setup ####
# Use R Projects, not setwd().
library(haven)
library(tidyverse)
library(opendatatoronto)
# Read in the raw data. 
raw_data <- readr::read_csv("inputs/data/COVID19 cases.csv"
                     )

#### Data cleaning ####
reduced_data <- raw_data[-c(1,3,5,6,8,10,11,12,13,14,15,16,17,18)]

#### Saving the reduced data ####
write_csv(reduced_data,file = "inputs/data/reduced_data.csv")

reduced_data <- readr::read_csv("inputs/data/reduced_data.csv"
                      )

         
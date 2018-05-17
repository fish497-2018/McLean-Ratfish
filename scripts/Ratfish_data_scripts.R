ratfish_data <- read.csv("data/Copy of JonMcLean_Ratfish_Tow_Location_Densities(4824).csv")

library(tidyverse)

ratfish_data_rounded <- mutate(ratfish_data, round(StartLatitude_DD, digits = 2))


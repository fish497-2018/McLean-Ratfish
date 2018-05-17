ratfish_data <- read.csv("data/Copy of JonMcLean_Ratfish_Tow_Location_Densities(4824).csv")

library(tidyverse)

ratfish_data_rounded <- mutate(ratfish_data, rounded_latitude = round(StartLatitude_DD, digits = 2), rounded_longitude = round(StartLongitude_DD, digits = 2)) 


ggplot(data = ratfish_data_rounded) +
  geom_histogram(aes(x = rounded_latitude, y = Ratfish_BiomassDensity.kg.ha.))
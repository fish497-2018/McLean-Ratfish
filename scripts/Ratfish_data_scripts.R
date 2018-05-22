ratfish_data <- read.csv("data/Copy of JonMcLean_Ratfish_Tow_Location_Densities(4824).csv")

library(tidyverse)

ratfish_data_rounded <- mutate(ratfish_data, rounded_latitude = round(StartLatitude_DD, digits = 2), rounded_longitude = round(StartLongitude_DD, digits = 2)) 



#a bar version


#Latitude graph
ggplot(ratfish_data_rounded, aes(rounded_latitude, Ratfish_BiomassDensity.kg.ha.)) +
  geom_bar(stat = "summary", fun.y = "mean") +
  theme_classic()
  labs(x = "latitude", y = "Ratfish Biomass", title = "Ratfish Biomass and Latitude")

#Longtitude graph
ggplot(ratfish_data_rounded, aes(rounded_longitude, Ratfish_BiomassDensity.kg.ha.)) +
  geom_bar(stat = "summary", fun.y = "mean") +
  theme_classic() +
  labs(x = "Longitude", y = "Ratfish Biomass", title = "Ratfish Biomass and Longitude")


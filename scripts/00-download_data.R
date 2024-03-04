#### Preamble ####
# Purpose: Downloads, saves, and reads Airbnb data from Inside Airbnb
# Author: Xu Qi
# Date: 3 March 2024 
# Contact: xu.qi@mail.utoronto.ca
# License: MIT
# Pre-requisites: none
bibliography: references.bib


library(readr)

url <-
  paste0(
    "http://data.insideairbnb.com/france/ile-de-france/paris/2023-12-12/data/listings.csv.gz"
  )

airbnb_data <-
  read_csv(
    file = url,
    guess_max = 20000
  )

write_csv(airbnb_data, "airbnb_data.csv")

airbnb_data


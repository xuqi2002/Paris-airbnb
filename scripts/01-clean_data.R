#### Preamble ####
# Purpose: Cleans the raw Airbnb data 
# Author: Xu Qi
# Date: 3 March 2024 
# Contact: xu.qi@mail.utoronto.ca
# License: MIT
# Pre-requisites: 00-download_data.R

install.packages("dplyr")
library(arrow)
library(dplyr)

airbnb_data <- read.csv(here::here("airbnb_data.csv"))
show_col_types = FALSE

airbnb_data_selected <-
  airbnb_data |>
  select(
    host_id,
    host_response_time,
    host_is_superhost,
    host_total_listings_count,
    neighbourhood_cleansed,
    bathrooms,
    bedrooms,
    price,
    number_of_reviews,
    review_scores_rating,
    review_scores_accuracy,
    review_scores_value
  )

write_parquet(
  x = airbnb_data_selected, 
  sink = 
    "2023-12-12-paris-airbnblistings-select_variables.parquet"
)

rm(airbnb_data)


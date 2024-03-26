#### Preamble ####
# Purpose: Simulates the sentimental data for investigating consumer behaviour
# Author: Emily (Ping-Jen) Su
# Date: 26 March 2024 
# Contact: emily.su@mail.utoronto.ca
# License: MIT
# Pre-requisites: -
# Any other information needed? -


#### Workspace setup ####
library(tidyverse)
library(lubridate)

#### Simulate data ####
set.seed(123)

n_reviews <- 1000

user_reviews <- tibble(
  user_id = 1:n_reviews,
  timestamp = seq(from = ymd_hms("2022-01-01 00:00:00"), by = "hours", length.out = n_reviews),
  review_text = sample(c("Great product!", "Not satisfied with the service.", "Highly recommend it.", "Poor quality.", "Average experience."), n_reviews, replace = TRUE),
  rating = sample(1:5, n_reviews, replace = TRUE)  # Simulated rating (1 to 5)
)

# Function to generate sentiment scores
get_sentiment_score <- function(text) {
  # Simulated sentiment score (positive, negative, neutral)
  sentiment <- sample(c("positive", "negative", "neutral"), 1)
  return(sentiment)
}

# Apply sentiment score function to review text
user_reviews <- user_reviews %>% 
  mutate(sentiment_score = map_chr(review_text, get_sentiment_score))

# Simulate consumer behavior metrics
user_reviews <- user_review %>% 
  mutate(
    purchase_frequency = sample(1:10, n_reviews, replace = TRUE),  # Simulated purchase frequency
    brand_loyalty = sample(1:5, n_reviews, replace = TRUE),        # Simulated brand loyalty rating (1 to 5)
    product_rating = sample(1:5, n_reviews, replace = TRUE)        # Simulated product rating (1 to 5)
  )

# Display the first few rows of the simulated dataset
head(user_reviews)





penguins %>%
  select(-species, -island)

penguins %>%
  rename(island_new=island)

rename_with(penguins, tolower)

clean_names(penguins)


install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

library(tidyverse)
library(skimr)
library(janitor)

trimmed_df <- bookings_df %>% 
  select(hotel, is_canceled, lead_time)

trimmed_df %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename( hotel_type = hotel)

example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")

example_df <- bookings_df %>%
  mutate(guests = adults + children + babies)





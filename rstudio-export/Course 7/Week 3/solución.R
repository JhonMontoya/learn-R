library('tidyverse')
library('skimr')
library('janitor')

hotel_bookings <- read_csv('hotel_bookings.csv')
head(hotel_bookings)

str(hotel_bookings)
glimpse(hotel_bookings)

arrange(hotel_bookings, lead_time)

hotel_bookings %>% 
  summarise(mean(lead_time))


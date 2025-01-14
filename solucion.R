#Comentario: desarrollo actividad manipulación de datos en R

library("tidyverse")
library("skimr")
library("janitor")

# Cargar los datos

hotel <- read_csv('~/Documentos/Study/learn-R/hotel_bookings.csv')
print(hotel)

str(hotel)
glimpse(hotel)

arrange(hotel, lead_time)
arrange(hotel, desc(lead_time))

hotel %>% 
  summarise(mean(lead_time))

library("tidyverse")
library("ggplot2")

hotel_bookings <- read_csv("hotel_bookings.csv")

picture <- ggplot(data=hotel_bookings)+
  geom_bar(mapping = aes(x=market_segment)) +
  facet_wrap(~hotel)

mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)

picture + labs(title = "Count market segment", 
               caption = paste0("Datos de: ", mindate, " a ", maxdate),
               x= "Segmento de mercado",
               y= "Número de reservas")

ggsave('hotel_booking_chart.png', width=7,
       height=7)


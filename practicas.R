penguins %>% 
  select(-species)
penguins %>% 
  rename(island_new=island)

rename_with(penguins, toupper)
rename_with(penguins, tolower)

clean_names(penguins)

penguins %>% 
  arrange(-bill_length_mm)

penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarise(mean_bill_length_mm = mean(bill_length_mm))

penguins %>% 
  mutate(body_mass_Kg = body_mass_g/1000, flipper_length_m= flipper_length_mm/1000)
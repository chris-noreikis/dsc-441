source("src/data_source.r")

complete_dataset %>%
  filter(!is.na(DEP_DELAY_NEW)) %>%
  group_by(OP_CARRIER) %>%
  summarise(avg_delay_time = mean(DEP_DELAY_NEW)) %>%
  arrange(desc(avg_delay_time))

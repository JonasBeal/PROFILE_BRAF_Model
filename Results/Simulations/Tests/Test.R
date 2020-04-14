library(tidyverse)
test_data_t50 <- read.table("Results/Simulations/Tests/BRAF_Model_CL_n5000_t50.txt",header = T) %>%
  mutate(Proliferation_t50=(Proliferation_b1+Proliferation_b2)/2) %>%
  select(n_profile, Proliferation_t50)

test_data_t100 <- read.table("Results/Simulations/Tests/BRAF_Model_CL_n5000_t100.txt",header = T) %>%
  mutate(Proliferation_t100=(Proliferation_b1+Proliferation_b2)/2) %>%
  select(n_profile, Proliferation_t100)

test_data <- bind_cols(test_data_t50, test_data_t100) %>%
  select(-n_profile, -n_profile1)

pivot_longer(test_data, cols = starts_with("Proliferation"),
             names_to = "Time", values_to = "Score") %>%
  ggplot(aes(x=Time, y=Score)) +
  geom_boxplot()
  

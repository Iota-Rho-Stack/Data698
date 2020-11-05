# Train, Test, Split.

### Set Seed
set.seed(seed = 111)

# Set Partition

source("data_clean.R")$value$second_Recording[sample(nrow(source("data_clean.R")$value$second_Recording)),] %>%
  rowwise() %>%
  mutate(is_training_data = sample(
    c(TRUE, FALSE),
    1,
    replace = TRUE,
    prob = c(0.7, 0.3) # Set weights for each group here
  ))
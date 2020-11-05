require(tidyverse)
list(
  source('/cloud/project/tts.R')$value %>%
    filter(is_training_data == F) %>%
    select(!c(status,is_training_data)) %>%
    as.matrix(),
  source('/cloud/project/tts.R')$value %>%
    filter(is_training_data == F) %>%
    select(status) %>%
    as.matrix()
)
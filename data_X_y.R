require(tidyverse)
list(
  source('/cloud/project/tts.R')$value %>%
    filter(is_training_data == T) %>%
    select(!c(status,is_training_data)) %>%
    as.matrix(),
  source('/cloud/project/tts.R')$value %>%
    filter(is_training_data == T) %>%
    select(status) %>%
    as.matrix()
) 
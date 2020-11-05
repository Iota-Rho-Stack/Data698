# Data Clean

require(tidyverse)
require(scales)

# Partition and Clean Data

setNames(
  list(
    source('/cloud/project/data_source.R')$value %>%
      drop_na() %>%
      select_if(is.double) %>%
      filter(Recording == 1) %>%
      select(-c(Recording)) %>%
      transmute(across(everything(),scale)) %>%
      transmute(across(everything(),rescale)) %>%
      rename_with(tolower),
    source('/cloud/project/data_source.R')$value %>%
      drop_na() %>%
      select_if(is.double) %>%
      filter(Recording == 2) %>%
      select(-c(Recording)) %>%
      transmute(across(everything(),scale)) %>%
      transmute(across(everything(),rescale)) %>%
      rename_with(tolower),
    source('/cloud/project/data_source.R')$value %>%
      drop_na() %>%
      select_if(is.double) %>%
      filter(Recording == 3) %>%
      select(-c(Recording)) %>%
      transmute(across(everything(),scale)) %>%
      transmute(across(everything(),rescale)) %>%
      rename_with(tolower)
  ),
  c("first_Recording", "second_Recording", "third_Recording")
)

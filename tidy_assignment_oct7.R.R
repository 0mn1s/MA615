library(tidyverse)

tts <- read.csv('tts.csv')
n_var <- length(tts)-1
n_obs <- nrow(tts)
ans_1 = 0
ans_2 = n_var
ans_3 = n_obs

tts_tidy <- tts

tts_tidy %>%
 select(-1)

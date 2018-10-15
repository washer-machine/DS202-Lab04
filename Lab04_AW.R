
library(tidyverse)
library(ggplot2)

# Read in dataset
av <- read.csv("https://raw.githubusercontent.com/fivethirtyeight/data/master/avengers/avengers.csv", stringsAsFactors = FALSE)
av

# check structure of dataset
str(av)


# Part One: Cleaning
av2 <-av %>% gather(key = Time, value = Deaths, c(11,13,15,17,19))

av2$Time <- parse_number(av2$Time)

str(deaths)

#########################
# Part Two: Investigation
But you can only tempt death so many times. There’s a 2-in-3 chance that a member of the Avengers returned from their first 
stint in the afterlife, but only a 50 percent chance they recovered from a second or third death.

av3 <- deaths %>% gather(key = TimeR, value = Returns, c(11:15))
av3$TimeR <- parse_number(av3$TimeR)
av3 <- av3 %>% filter(Time == TimeR) %>% select(-TimeR)

# Filter to examine only deaths
av3 %>% filter(Deaths == 'YES') %>% 
  ggplot(aes(x = Returns)) +
  geom_bar() +
  facet_wrap(~Time)

# count of first deaths versus multiple deaths
av3 %>% filter(Time == 1)av3 %>% summarise(count(Time))

An avenger is more likely to return after one death than after two deaths.  
However, we also see that while many Avengers die once, much fewer die multiple deaths.

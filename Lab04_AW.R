
library(tidyverse)

# Read in dataset
av <- read.csv("https://raw.githubusercontent.com/fivethirtyeight/data/master/avengers/avengers.csv", stringsAsFactors = FALSE)
av

# check structure of dataset
str(av)


# Part One: Cleaning
av2 <-av %>% gather(key = Time, value = Deaths, c(11,13,15,17,19))

av2$Time <- parse_number(av2$Time)

# Part Two: Investigation
But you can only tempt death so many times. There’s a 2-in-3 chance that a member of the Avengers returned from their first 
stint in the afterlife, but only a 50 percent chance they recovered from a second or third death.




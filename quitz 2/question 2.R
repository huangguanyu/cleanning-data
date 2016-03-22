#this R program is for Cleanning Data Quiz 2 Question 2

library(sqldf)

file <- "getdata-data-ss06pid.csv"

acs <- read.csv(file,header =  TRUE)

output <- sqldf("select pwgtp1 from acs where AGEP < 50")

original <- acs$AGEP

test_1 <- sqldf("select distinct AGEP from acs")
identical(original,test_1)

test_2 <- sqldf("select distinct pwgtp1 from acs")
identical(original,test_2)

test_3 <- sqldf("select AGEP where unique from acs")
identical(original,test_3)

test_4 <- sqldf("select unique AGEP from acs")
identical(original,test_4)

identical(original,test_1)
identical(original,test_2)
identical(original,test_3)
identical(original,test_4)
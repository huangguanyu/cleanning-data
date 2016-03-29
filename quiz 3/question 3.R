# question 3 -5

library(dplyr)

#read data
gdp <- read.csv("getdata-data-GDP.csv",skip=4, nrow =190)
edu <- read.csv("getdata-data-EDSTATS_Country.csv")

gdp <- gdp[,c(1,2,4,5)]
#we only need part of gdp data

# change gdp's column names
colnames(gdp)<- c("CountryCode", "Ranking", "GDP")
data <- merge(gdp,edu,by ="CountryCode")

print(nrow(data))

# group data by Income.Group
by_income<-group_by(data, Income.Group)

data$Ranking <- as.numeric(data$Ranking, na.rm ="TRUE")

results =summarise(by_income,temp = mean(Ranking, na.rm ="TRUE"))# group_by

# group data

data$rankingGroup <- cut(data$Ranking, breaks =5)
table(data$rankingGroup, data$Income.Group)

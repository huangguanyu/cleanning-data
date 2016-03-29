# question 2

library(jpeg)

pic <- readJPEG("getdata-jeff.jpg", native = TRUE)
quantile(pic,prob =c(0.3,0.8))

file <- "getdata-wksst8110.for"

data <- read.fwf(file,skip = 4, 
          widths = c(10, 5, 4, 1, 4, 1, 7, 1, 4, 1, 7, 1, 4, 1, 7))

result <- sum(as.numeric(data$V7))

print(result)
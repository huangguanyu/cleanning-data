# question 1

# read data
data <- read.csv("getdata-data-ss06hid.csv")

agricultureLogical <- data$AGS == 6 && data$ACR == 3

which(agricultureLogical)


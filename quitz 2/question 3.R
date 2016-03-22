#
#READ the connection

con <- url("http://biostat.jhsph.edu/~jleek/contact.html")

htmlcode=readLines(con)

close(con)

n10 <- nchar(htmlcode[10])
n20 <- nchar(htmlcode[20])
n30 <- nchar(htmlcode[30])
n100 <- nchar(htmlcode[100])

print(c(n10,n20,n30,n100))
#Basic commands in R
getwd()
setwd("C:/Users/Anurag/Documents")
dir(path = "C:/Users/Anurag/Documents")
list.files()
class(TRUE)
class(T)
class(2)
class(76.25)
class(2L)
is.numeric(2)
is.numeric(2L)
is.integer(2)
is.integer(2L)
class("Data analytics")
typeof(76.25)
class(5 + 5i)
ls()
installed.packages()
str(ls)
Sys.Date()
Sys.time()
Sys.timezone()

#loading and handling data
sum(1, 2, 3)
sum(1, 5, NaN, NA, na.rm = FALSE)
sum(1, 5, NaN, NA, na.rm = TRUE)
min(1, 2, 3)
max(1, 2, 3)
seq(1, 10, 2)
strsplit("R language is open source language", " ")
a <- "R language"
b <- "is open source language"
paste(a, b)
rep("abc", 3)
grep("statistical",c("R","is","a","statistical","language"),fixed=TRUE)
toupper("statistics")
tolower("STATISTICS")
substr("statistics", 7, 9)

#missing values treatment
A <- c(10, 20, NA, 40)
is.na(A)
b <- c(na.omit(A))
b
d <- c(na.exclude(A))
d
na.fail(A)
e <- c(na.pass(A))
e

#as operator
df <- data.frame(a = c('A', 'B', 'C', 'E', 'F'), b = c(1, 2, 3, 4, 5))
df
lis <- as.list(df)
lis
as.matrix(df)

#vector
c(4, 7, 8, FALSE, "R")
project <- vector(length = 3)
project[1] <- "abc"
project[2] <- "def"
project[3] <- "ghi"
names(project) <- c("first", "second", "third")
project

x <- c(2, 5, 8)
barplot(x)
x + 1
x - 1
x / 2
x * 2

#matrix
matrix(1, 3, 4)
a <- seq(10, 90, 10)
mat <- matrix(a, 3, 3)

#factor
HouseColor <- c('red', 'green', 'blue', 'yellow', 'red', 'green', 'blue', 'blue')
types <- factor(HouseColor)
HouseColor
types
levels(types)

read.csv('filename')
read.table('filename', header = T, sep = ",")
read.xlsx('filename')
install.packages("rjson")
output <- fromJSON(file = "path")
as.data.frame(output)
install.packages("XML")
output <- xmlParse(file = "path")
xmlRoot(output)
xmlSize(output)




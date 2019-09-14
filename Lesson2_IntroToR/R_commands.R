#My first R command
print("Good Morning!")

name <- "jane"
name1 <- "Bob"

price <- 2.99

print(price)
ls()
rm(price)
ls()

height <- height+20

mass <- 64
sqrt(64)
res <- sqrt(mass)
print(res)
getwd()
?print
help(print)
install.packages("knitr")
library(knitr)
score <- 79
typeof(score)
is.integer(score)
score <- 79L
typeof(score)
is.integer(score)
typeof(is.integer(score))

score1 <- 79
a <- is.integer(score)
b <- is.numeric(a)
c <- is.logical(b)
v <- c(4,5,6)
v <- c(1:3, 45)
length(v)
str(v)
head(v, n=2)
tail(v, n=2)
v <- c(v, 56)
str(v)
?c()
m <- matrix(c(1:18), 3,6)
m
dim(m)
cont <- factor(c("asia", "europe", "america", "africa", "oceania"))
str(cont)
?factor()
l <- list("Aphganistan", 1952, 88788)
print(l)
typeof(l)
str(l)
menuitems <- c("chicken", "soup", "salad","tea")
menutypes <- factor(c("solid","liquid","solid","liquid"))
menucost <- c(4.99,2.99,3.29,1.89)
myorder <- list(menuitems, menutypes, menucost)
print(myorder)
?list()
myorder_df <- data.frame(menuitems, menutypes, menucost)
print(myorder_df)
?data.frame()
v <- c(2:10)
v[2]
v[c(3:6)]
v[-c(3:6)]

myorder
myorder[1]
myorder_df[1:3, ]

myorder_df
myorder_df$menutypes
x <- myorder_df$menutypes
x

v <- c(1,5,3,4,5)
v
v1 <- v[v==5]
v1
v==5

df1 <- myorder_df[myorder_df$menutypes=="solid", ]
df1

df2 <- myorder_df[myorder_df$menucost>3, ]
df2

read.table("gapminder.txt", TRUE)
data <- read.table("gapminder.txt", header=TRUE)
head(data)
str(data)
typeof(data)
x1 <- data[, c(3,5)]
head(x1)
data[data$country=="Sweden",]
unique(data[,1])

#pull out life expectancy
x2 <- data[data$lifeExp<70,]
head(x2)


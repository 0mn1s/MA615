myName <- "Jing Xu"

library(ggplot2)
library(dplyr)

##1.
iris.vers <- subset(iris, iris$Species=="versicolor")
ans_1 <- iris.vers

##2.
sepal.dif <- iris.vers$Sepal.Length - iris.vers$Sepal.Width
ans_2 <- sepal.dif

##3
iris.vers$sepal.dif <- sepal.dif
ans_3 <- iris.vers

##4
x <- unlist(lapply(mtcars, class))
ans_4 <- x

##5
mtcars$vs <- as.integer(mtcars$vs)
mtcars$cyl <- as.integer(mtcars$cyl)
mtcars$am <- as.integer(mtcars$am)
newmtc <- mtcars
x <- unlist(lapply(mtcars, class))
ans_5 <- x

##6
ans <- round(newmtc,1)

##7
iris_7 <- filter(iris, Species == "virginica" & Sepal.Width > 3.5)
ans_7 <- iris_7

##8
iris_8 <- subset(iris, Species=="virginica" & Sepal.Width > 3.5, 1:4)
ans_8 <- iris_8

##9
r_id <- rownames(ans_8)
ans_9 <- r_id

##10
df10 <- subset(diamonds, diamonds$cut == "Ideal" & diamonds$carat < 0.21)
diam_10 <- length(df10$price)
ans_10 <- diam_10

##11
df11 <- subset(diamonds, diamonds$x+diamonds$y+diamonds$z > 40)
diam_11 <- length(df11$price)
ans_11 <- diam_11

##12
df12 <- subset(diamonds, diamonds$price > 10000 | diamonds$depth >= 70)
diam_12 <- length(df12$price)
ans_12 <- diam_12

##13
df13 <- subset(diamonds,select = c("color","y"))
diam_13 <- df13[c(67, 982),]
ans_13 <- diam_13

##14
diam_14 <- diamonds[c(453,792,10489),]
ans_14 <- diam_14

##15
df15 <- head(diamonds,10)
diam_15 <- subset(df15,select = c("x","y","z"))
ans_15 <- diam_15

##16
newdiam <- head(diamonds,1000)
ans_16 <- newdiam

##17
newdiam_17 <- arrange(newdiam, price)
ans_17 <- newdiam_17

##18
set.seed(56)
diam750 <- sample_n(diamonds, size = 750, replace = FALSE)
ans_18 <- diam750

##19
sum_diam750 <- summary(diam750)
ans_19 <- sum_diam750
myName <- "Jing Xu"

#1
##(a)
v1 <- c(1:20)
##(b)
v2 <- c(20:1)
##(c)
v3 <- seq(1,19,2)
##(d)
v4 <- rep(c(3,7,11),10)
##(e)
v5 <- c(rep(c(3,7,11),10),3)

#2
x <- seq(3,6,0.1)
x1 <- c(exp(x)*sin(x))

#3
i <- (10:100)
sum1 <- sum(i^3+4*(i^2))

#4
##(a)
str1 <- paste("label",1:30)
##(b)
str2 <- paste0("function",1:30,sep="")

#5
rv <- c(1,'function',NA,seq(1,5,2),0.125)
vs <- paste(rv,sep='')

#6.
A <- matrix(c(1:9),nrow = 3, ncol = 3)
m1_ans <- A%*%A%*%A

#7
B <- matrix(nrow = 17, ncol = 3)
B[,1] <- 12
B[,2] <- -12
B[,3] <- 12
m2_ans <- t(B)%*%B

#8
A <- matrix(nrow = 5, ncol = 5)
A[1,] <- c(1:5)
A[2,] <- c(2,1,2,3,4)
A[3,] <- c(3,2,1,2,3)
A[4,] <- c(4:1,2)
A[5,] <- c(5:1)
B=c(7,-1,-3,5,17)
m3_ans <- solve(A,B)

#9
##(a)
xv <- seq(0,1,0.1)
function1 <- function(xv)
{
  xv^(1:length(xv))
}
func1_ans <- function1(xv)

##(b)
function2 <- function(xv)
{
  (xv^(1:length(xv)))/(1:length(xv))
}
func2_ans <- function2(xv)

##(c)
function3 <- function(x,n)
{
  sum((x^(1:n)/(1:n)))+1
}
func3_ans <- function3

#10
##(a)
cel_to_far <- function(x){(x*9/5+32)}
##(b)
far_to_cel <- function(x){(x-32)*5/9}

#11
func_odd <- function(x){seq(1,x,2)}
odd_ans <- func_odd(2000)

#12
function12 <- function(r){
  s <- c(1:r)
  sum(s^0.5/(11+3.5*r^1.2))
}
function12(10)
sum_ans <- sapply(function12(10),sum)

#13
modNumber <- function(x,y){
  if (x%%y==0){return(x)}
  else{return((x%/%y+1)*y)}
}

#14
numberOfWheels <- function(x){
  switch(x,"unicycle"=1,"bike"=2,"car"=4,"truck"=4,"tricycle"=3,"motorcycle"=2)
}

#15
myFactorial <- function(x){
  {s <- 1
  for(i in 1:x)
  {s=s*i}
  return(s)}
}

#16
myCustomFactorial <- function(x,y){
  return(prod(min(x,y):max(x,y)))
}

#17
library(datasets)
customRiverMean <- function(x){
  mv <- rivers
  w <-c()
  for (i in 1:length(mv)){
    if (mv[i] < x)
      w <- append(w,mv[i])
  }
  return(sum(w)/length(w))
}

#18
Length <- ToothGrowth$len
longTeeth <- c()
for (i in Length){
  if (i >= 15)
    longTeeth <- append(longTeeth,i)
} 

#19
ave_col <- lapply(mtcars, mean)
averageHorsePower <- ave_col$hp
averageWeight <- ave_col$wt
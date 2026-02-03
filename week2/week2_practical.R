##The apply() function: 
?apply
x <- matrix(1:20, nrow = 10, ncol = 2) 
x
apply(x, 2, mean)
rowSums <- apply(x, 1, sum) 
rowMeans <- apply(x, 1, mean) 
colSums <-  apply(x, 2, sum) 
colMeans <- apply(x, 2, mean) 
print(rowSums)
x
apply(x, 1, quantile, probs = c(0.25, 0.75)) 

##2. Factors 
?factor
x <- factor( c("yes", "yes", "no", "yes", "no") )
x

##3. The table function: 
x <- factor( c("yes", "yes", "no", "Yes", "no"), levels=c("yes","no","any"),exclude=c("no"))
table(x)

##4. The tapply() function: 
ages <- c(25,26,37,56,42,25,72) 
affill <- factor(c("U", "R", "R","D", "D", "U","D"))
tapply(ages, affill , mean) 

tapply(ages, affill , range) 

##5. Handling missing values:
x <- c(25,26,"NA",abc,56,42,25)
is.na(x)  
is.nan(x)  
x
x <- c(1, 2, NA, 10, 3) 
is.na(x) 
x <- c(1, 2, NaN, NA, 4) 
is.na(x) 

#6. Data cleansing of missing values: 
x <- c(1, 2, NA, 10, 3) 
x[is.na(x)] <- 0 
x
x <- c(1, 2, NA, 10, 3) 
x[is.na(x)] <- mean(x, na.rm=TRUE) 
x
x[1,]
x[,2]


library(ggplot2)
?ggplot

##1. The data frame() function:
inputdata<-rundata
data.frame(inputdata)
data
head(data,2)
tail(data,2)
x <- data.frame(names= c("rock","ram","kiran"), ages=sample(20:50,3))

nrow(x) 
ncol(x) 
str(x)


x$names
data() 

x <-mtcars 
x
?mtcars
boxplot(mtcars$mpg) 
hist(mtcars$mpg) 

par(mar=c(4,4,2,1)) 
boxplot(mtcars$mpg[mtcars$am==1], main="auto cars") 
boxplot(mtcars$mpg[mtcars$am==0], main="manual cars")
boxplot(mtcars$mpg~mtcars$am)

p <- ggplot(mtcars, aes(factor(am), mpg)) 
p + geom_boxplot() + geom_jitter(width = 0.2)

p <- ggplot(mtcars, aes(factor(am), mpg)) 
p + geom_boxplot(aes(colour = factor(vs)))

##Ggplot visualisations 

rundata$FirstRun
mean(rundata$FirstRun)
sd(rundata$FirstRun)
summary(rundata$FirstRun)
hist(rundata$FirstRun)
?hist

dens <- density(rundata$FirstRun) 
plot(dens)

convertToFunc <- with(dens, splinefun(x,y))
integrate(convertToFunc, lower=20, upper=25) 
shapiro.test(rundata$FirstRun)

plot(density(rundata$FirstRun), col="red")
lines(density(rundata$SecondRun), col="green")
lines(density(rundata$FinalRun), col="blue")
legend("bottom", legend = c("First run","Second
run"), fill=c("red","green"))

plot(rundata$FirstRun, rundata$SecondRun)




library(ggplot2) 
p <- ggplot(mtcars, aes(factor(am), mpg)) 
p + geom_boxplot()

m<- matrix(c(1,2,3,4,5,6),nrow=3, ncol=2)
m
dim(3)

df <- data.frame(
  x = 1:10,
  y = rnorm(10),
  color = rep(c("A", "B"), each = 5),
  group = rep(c("G1", "G2"), 5)
)


ggplot(df, aes(x = x, y = y, color = color, linetype = barplot())) +
  geom_line(height=1) +
  theme_minimal()


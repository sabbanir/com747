##Exercise 1

population <- rnorm(1000, 52, 40) 
population
samplemeans <- vector(length=100) 
sampleSDs <- vector(length=100) 

for(i in 1:100){ 
  y <- sample(population, i*10) 
  samplemeans[i] <- mean(y) 
  sampleSDs[i] <- sd(y) 
}
samplemeans
sampleSDs

populateion1 <- rnorm(1000,50,42)
sampleMeans1 <- vector(length=100)
sampleSDS <- vector(length=100)

for (i in 1:100 ){
  y <-sample(population, i*10)
  sampleMeans1[i] <- mean(y)
  sampleSDs[i] <- sd(y)
}

sampleMeans1
sampleSDs

plot(samplemeans)
abline(h=52)
?abline
plot(sampleSDs)
abline(h=40)

##Exercise 2
samplesize <- 200
meanX <- 50
meanY <- 51
sdX <- 5
sdY <- 5
pvalues <- vector(length = 100)

effectSize <- abs(meanX - meanY) / sqrt((( sdX*sdY)+ ( sdX * sdY))/2)
effectSize

for (i in 1:100){
  x <- rnorm(samplesize, meanX, sdX)
  y <- rnorm( samplesize, meanY, sdY)
  
  p <- t.test ( x,y, PAIRED = FALSE)
  pvalues [i] <- p$p.value
  
}
p
hist(pvalues,breaks=20)

length(pvalues[pvalues<0.5])
length(pvalues[pvalues>0.5])




samplesize1<-1000
meanxx <-50
meanxx
meanYY <- 51
sdXX <- 5
sdYY <- 5
pvalues1 <- vector(length=1000)

for (i in 1:1000){
  x <-rnorm(samplesize1, meanXX, sdXX)
  y <- rnorm ( samplesize1, meanYY, sdYY)
  p <- t.test(x,y,PAIRED = FALSE)
  pvalues1[i] = p$p.value
}
pvalues1
hist(pvalues1,breaks=100)
length(pvalues1[pvalues1<0.5])
length(pvalues1[pvalues1>0.5])
pvalues1[pvalues1<0.5]

##R Power function
power.t.test(power = .80, delta = 0.5, type="two.sample")

power.t.test(n=100 , d = 0.5 , sig.level = 0.05 , type = 
             c("two.sample")) 


power.t.test(n=200 , d = 0.5 , sig.level = 0.05 , type = 
               c("two.sample")) 


##Playing with Run Data:
inputdata

plot(inputdata$FirstRun,  inputdata$SecondRun)
reg1 <- lm(inputdata$SecondRun~inputdata$FirstRun)
?lm
abline(reg1)
title("Run stats")


## Correlation Coeffient
cor(inputdata$FirstRun, inputdata$SecondRun)

cor.test(inputdata$FirstRun, inputdata$SecondRun)


inputdata$runDiff <- inputdata$SecondRun - inputdata$FirstRun
inputdata

y <- inputdata$FirstRun[inputdata$FirstRun>30]
length(y)


t.test(inputdata$FirstRun, inputdata$SecondRun, PAIRED = TRUE)
# Simple Bar Plot
counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution",
        xlab="Number of Gears")
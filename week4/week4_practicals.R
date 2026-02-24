iris<- read.csv('C:\\Users\\Lenovo\\OneDrive\\COM747\\week4 - Feb 17th\\Iris.csv')
iris$SepalWidthCm
cor.test(iris$SepalLengthCm , iris$SepalWidthCm, method="pearson")

plot(iris$SepalLengthCm, iris$SepalWidthCm)
cor(iris[c("SepalLengthCm","SepalWidthCm","PetalLengthCm","PetalWidthCm")])

pairs(iris[c("SepalLengthCm","SepalWidthCm","PetalLengthCm","PetalWidthCm")])

##Scatterplot Matrix (SPLOM)

install.packages("psych")
library(psych)
pairs.panels(iris[c("SepalLengthCm","SepalWidthCm","PetalLengthCm","PetalWidthCm")])




### Correlation with Rundata
rundata=read.csv("C:\\Users\\Lenovo\\OneDrive\\COM747\\week2\\lab\\rundata.csv")
rundata
plot(rundata$FirstRun,rundata$SecondRun)
reg1<-lm(rundata$SecondRun~rundata$FinalRun)
abline(reg1)
cor(rundata$FirstRun,rundata$SecondRun)
cor.test(rundata$FirstRun,rundata$SecondRun)

lma<-lm(rundata$FinalRun~FirstRun+SecondRun, data=rundata)
summary(lma)
help("~")

lma <- lm(FinalRun ~ FirstRun + SecondRun, data=rundata)
newdata <- data.frame(FirstRun=22, SecondRun=25)
predict(lma,newdata)

set.seed(12345)
run2 <- rundata[order(runif(99)),]
run2
lma<-lm(FinalRun~FirstRun + SecondRun, data=run2[c(1:80),])

testing <- run2[c(81:99),]
prediction <- predict(lma, testing)
diff <- prediction - testing$FinalRun
diff_ABS <- abs(diff)
mean(diff)
hist(diff_ABS)
boxplot(diff_ABS)

length(diff[diff>0])
length(diff_ABS[diff_ABS<=2])

testing$prediction <- prediction
testing$difference <- diff_ABS

##logistic regression model
rundata$superrun = ifelse(rundata$FinalRun >= 45, 1, 0)
logitModel <- glm(superrun ~ FirstRun + SecondRun,
                  data=rundata, family=binomial(link="logit"))
summary(logitModel)


##Time Series
births <- scan("http://robjhyndman.com/tsdldata/data/nybirths.dat")
birthstimeseries <- ts(births, frequency=12, start=c(1946,1))
plot.ts(birthstimeseries)


abline(reg=lm(birthstimeseries~time(birthstimeseries)))


install.packages("TTR")
library(TTR)
birthstimeseries <- SMA(birthstimeseries, n=15)
plot.ts(birthstimeseries)

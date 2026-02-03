##Vector
getwd()
x = c (3,5,4,10)
##mean(x)
mean(x)
#sd(x)
sd(x)
summary(x)
sqrt(x)
print(x)
any(x>3)
any(x<8)
all(x>4)
print(x)
y <- x[x<4]
print(y)
y <- x[x>5| x==3]
print(y)
x[x>4] <- 0

2+c(0,1,2,3,4,5,6)
3*c(0,1,2,3,4,5,6)
x<-c(3,4,2)
x+2
print(x)
summary(x)
c(3,4,2)+c(1,2,3,11,22,33,1,1,1)
##

x<-c(10.5,16.3,25.1)
?round
round(x,)

##Key value pairs
x<- c(1,2,3)
names(x) <- c("a","b","c")
x["b"]
x['a']
x[1]

##Explicit coercion or casting

x <- c(0:6)
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

##Nonsesical Coercion


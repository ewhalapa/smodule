#### 학습내용 ####

## 1.1
seed(1234)
DieOutcome <- sample(1:6,10000, replace= TRUE)
mean(DieOutcome)
sd(DieOutcome)

## 2.1
x10 <- c()
k =10000
set.seed(1234)
for (i in 1:k) {x10[i] = mean(sample(DieOutcome,10, replace = TRUE))}

## 3.1
mean(x10);mean(DieOutcome)
sd(x10) ; sd(DieOutcome)/sqrt(10)
sd(DieOutcome) 

## 3.2
x100 <- c()
x1000 <- c()
k =10000
set.seed(1234)
for ( i in 1:k){
  x100[i] = mean(sample(DieOutcome,100, replace = TRUE))
  x1000[i] = mean(sample(DieOutcome,1000, replace = TRUE))
}
mean(x100);mean(DieOutcome)
mean(x1000);mean(DieOutcome)
sd(x100); sd(DieOutcome)/sqrt(100)
sd(x1000); sd(DieOutcome)/sqrt(1000)
sd(DieOutcome) 

## 4.1
hist(x10)
abline(v = mean(x10))

## 4.2
par(mfrow=c(1,2))
hist(x100)
abline(v = mean(x100))
hist(x1000)
abline(v = mean(x1000))



#### 학습점검 ####

set.seed(1234)
CoinOutcome <- sample(0:1,10000, replace= TRUE)

x10 <- c()
k =10000
set.seed(1234)
for ( i in 1:k) {x10[i] = mean(sample(CoinOutcome ,10, replace = TRUE))}

x100 <- c()
x1000 <- c()
k =10000
set.seed(1234)
for ( i in 1:k){
  x100[i] = mean(sample(CoinOutcome,100, replace = TRUE))
  x1000[i] = mean(sample(CoinOutcome,1000, replace = TRUE))
}

par(mfrow=c(1,3))
hist(x10)
abline(v = mean(x10))
hist(x100)
abline(v = mean(x100))
hist(x1000)
abline(v = mean(x1000))

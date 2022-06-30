#### 학습내용 ####

## 1.1
install.packages("datarium")
library(datarium)
str(marketing)

## 1.2
lm1 <- lm(sales~., data=marketing)
lm1

## 1.3
install.packages("car")
library(car)
vif(lm1)

## 1.4
summary(lm1)

## 1.5
summary(marketing)

## 1.6
install.packages("lm.beta")
library(lm.beta)
lm.beta(lm1)

## 1.7
step(lm1)

## 1.8
lm2 <- lm(sales ~ youtube + facebook, data = marketing)
summary(lm2)


#### 학습점검 ####

## 1.1
install.packages("MASS")
library(MASS)
str(Boston)

## 1.2
lm1 <- lm(medv~., data=Boston)
lm1

## 1.3
#install.packages("car")
library(car)
vif(lm1)

## 1.4
summary(lm1)

## 1.5
summary(Boston)

## 1.6
#install.packages("lm.beta")
library(lm.beta)
lm.beta(lm1)

## 1.7
step(lm1)

## 1.8
lm2 <- lm(medv ~ crim + zn + chas + nox + rm + dis + rad + 
            tax + ptratio + black + lstat, data = Boston)
summary(lm2)

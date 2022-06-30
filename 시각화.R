#### 학습내용 ####

## 1.1
cyl <- as.factor(mtcars$cyl)
plot(cyl)

## 1.2
install.packages("ggplot2")
library(ggplot2)
ggplot(mtcars, aes(cyl))+geom_bar(fill="orange")

## 1.3
# R 내장함수로 막대그래프 그리기
t <- tapply(mtcars$mpg, mtcars$cyl, mean)
barplot(t)

# ggplot 으로 막대그래프 그리기
install.packages("ggplot2")
library(ggplot2)
install.packages(“dplyr”)
library(dplyr)
mtcars %>% group_by(cyl) %>% summarise(m=mean(mpg)) %>%
  ggplot(aes(cyl, m))+geom_bar(stat="identity")

## 2.1
hist(mtcars$mpg)

## 2.2
install.packages("ggplot2")
library(ggplot2)
ggplot(mtcars, aes(mpg))+geom_histogram(bins=5)

## 2.3
library(moments)
skewness(mtcars$mpg)
kurtosis(mtcars$mpg)

## 3.1
boxplot(mtcars$wt)

## 3.2
install.packages("ggplot2")
library(ggplot2)
ggplot(mtcars, aes(wt))+geom_boxplot(outlier.color="red", outlier.size = 3)

## 3.3
median(mtcars$wt)



#### 학습점검 ####

## 1.1
hist(diamonds$carat)

## 1.2
#install.packages("ggplot2")
library(ggplot2)
ggplot(diamonds, aes(carat))+geom_histogram(bins=10, fill="pink")

## 1.3
library(moments)
skewness(diamonds$carat)
kurtosis(diamonds$carat)

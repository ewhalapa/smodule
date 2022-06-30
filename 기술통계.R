#### 학습내용 ####

## 1.
mean(mtcars$mpg)  # 평균
sd(mtcars$mpg)  # 표준편차
max(mtcars$mpg)  # 최대값
min(mtcars$mpg)  # 최소값
median(mtcars$mpg)  # 중간값
install.packages("DescTools")  # Mode 함수 실행을 위해 필요한 패키지
library(DescTools)
Mode(mtcars$mpg)  # 최빈값
install.packages("moments") # skerness 와 krutosis 의 실행을 위해 필요한 패키지
library(moments)
skewness(mtcars$mpg)  # 왜도
kurtosis(mtcars$mpg)  # 첨도

## 2.
summary(mtcars$mpg)



#### 학습점검 ####

## 1.
mean(AirPassengers)  # 평균
sd(AirPassengers)  # 표준편차
max(AirPassengers)  # 최대값
min(AirPassengers)  # 최소값
median(AirPassengers)  # 중간값
install.packages("DescTools")  # Mode 함수 실행을 위해 필요한 패키지
library(DescTools)
Mode(AirPassengers)  # 최빈값
install.packages("moments") # skerness, krutosis 함수 실행을 위해 필요한 패키지
library(moments)
skewness(AirPassengers)  # 왜도
kurtosis(AirPassengers)  # 첨도

## 2.
summary(AirPassengers)

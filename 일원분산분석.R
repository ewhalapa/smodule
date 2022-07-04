#### 학습내용 ####
## 1.1
# 데이터 저장
iris <- iris

# iris 종류 확인
levels(iris$Species)

# 평균 분산 표준편차 계산
library(dplyr)
group_by(iris, Species) %>%
  summarise(
    count = n(),
    mean = mean(Sepal.Width, na.rm = TRUE),
    sd = sd(Sepal.Width, na.rm = TRUE)
  )

## 1.2
plot(density(subset(iris, Species == 'setosa')$Sepal.Width), xlim=c(1.5,5), ylim=c(0,1.3),main='Sepal.Width 분포')
lines(density(subset(iris, Species == 'versicolor')$Sepal.Width), col='red', lty=2)
lines(density(subset(iris, Species == 'virginica')$Sepal.Width), col='blue', lty=3)
legend("topleft", legend=c("setosa","versicolor","virginica"),
       lty=c(1,2,3), cex=1.2, col=c("black","red","blue"))

## 1.3
# Shapiro-Wilk 정규성 검정
shapiro.test(subset(iris, Species == 'setosa')$Sepal.Width)
shapiro.test(subset(iris, Species == 'versicolor')$Sepal.Width)
shapiro.test(subset(iris, Species == 'virginica')$Sepal.Width)

## 1.4
library(dplyr)
group_by(iris, Species) %>%
  summarise(
    var = var(Sepal.Width, na.rm = TRUE))

## 1.5
library(car)
leveneTest(Sepal.Width ~ Species, data = iris)

## 1.6
# 일원분산분석
aov_result = aov(Sepal.Width ~ Species, data=iris)
summary(aov_result)

## 1.7
library(agricolae)
# Tukey 
TukeyHSD(aov_result)

# Scheffe test 
scheffe.test(aov_result, 'Species', alpha=0.05, console=T)

# Bonferroni
LSD <- LSD.test(aov_result, "Species", p.adj="bonferroni", group=T,console=T)



#### 학습점검 ####
## 1.1
# 데이터 불러오기
car <- mtcars

# gear 를 범주형 변수로 설정
car$gear = as.factor(car$gear)

# gear의 범주 유형 확인
levels(car$gear)

# gear 집단 간 mpg 데이터의 수, 평균, 분산, 표준편차 계산
library(dplyr)
group_by(car, gear) %>%
  summarise(
    count = n(),
    mean = mean(mpg, na.rm = TRUE),
    var = var(mpg, na.rm = TRUE),
    sd = sd(mpg, na.rm = TRUE)
  )

## 1.2
# 정규성 검정
shapiro.test(subset(car, gear == '3')$mpg)
shapiro.test(subset(car, gear == '4')$mpg)
shapiro.test(subset(car, gear == '5')$mpg)

## 1.3
# 등분산성 검정
library(car)
leveneTest(mpg ~ gear, data = car)

## 1.4
# 일원분산분석
aov_result = aov(mpg ~ gear, data=car)
summary(aov_result)

#### 학습내용 ####

## 1.1
# 임의의 모집단 생성
set.seed(1234)
population <- rnorm(10000, 0, 1)

# 모집단으로부터 표본 추출
set.seed(1234)
data <- sample(population, 100)

# 단일 표본 t 검정
t.test(data, mu=0)

## 2.1
# 임의의 다른 두 모집단 생성
set.seed(1234)
population1 <- rnorm(10000, 5, 1)
set.seed(1234)
population2 <- rnorm(10000, -3, 1)

# 각 모집단으로부터 표본 추출
set.seed(1234)
data1 <- sample(population1, 100)
set.seed(1234)
data2 <- sample(population2, 100)

# 모분산 검정
var.test(data1, data2)

# 독립 표본 t 검정
t.test(data1, data2, paired=FALSE, var.equal = TRUE)

## 3.1
# 사전 집단과 사후 집단을 생성
set.seed(1234)
before <- rnorm(100, 15, 3)
set.seed(1234)
after <- rnorm(100, 16.4, 2.6)

# 대응 표본 t 검정
t.test(before, after, paired=TRUE)



#### 학습점검 ####

## 1.1
# 자동차 기어 종류 am 가 0인 표본과 1인 표본을 추출
group0 <- subset(mtcars, mtcars$am == 0)
group1 <- subset(mtcars, mtcars$am == 1)

# 모분산 검정
var.test(group0$mpg, group1$mpg)

# 독립 표본 t 검정
t.test(group0$mpg, group1$mpg, paired=FALSE, var.equal = TRUE)

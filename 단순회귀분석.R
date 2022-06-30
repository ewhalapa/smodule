#### 학습내용 ####

## 1.1
str(mtcars)

## 1.2
plot(mtcars$wt, mtcars$mpg)

## 1.3
lm1 <- lm(mpg~wt, data=mtcars)
lm1

## 1.4
summary(lm1)



#### 학습점검 ####

## 1.1
str(airquality)

## 1.2
plot(airquality$Wind, airquality$Ozone)

## 1.3
model <- lm(Ozone~Wind, data=airquality)
model

## 1.4
summary(model)

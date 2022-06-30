#### 학습내용 ####

## 1.1
plot(mtcars$wt, mtcars$mpg)

## 2.1
install.packages("ggplot2")
library(ggplot2)
ggplot(data = mtcars, aes(x = wt, y = mpg)) + geom_point()

## 3.1
#install.packages("ggplot2")
library(ggplot2)
ggplot(data = mtcars, aes(x = wt, y = mpg)) + geom_point(colour = "red", shape = 2, size = 4)



#### 학습점검 ####

## 1.1
library(ggplot2)
ggplot(data = attitude, aes(x = complaints, y = rating)) + geom_point(colour = "blue", shape = 1, size = 4)

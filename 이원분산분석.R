#### 학습내용 ####

## 1.1
df <- ToothGrowth
mean(df[df$dose==0.5,]$len)
mean(df[df$dose==1,]$len)
mean(df[df$dose==2,]$len)

## 1.2
mean(df[df$supp=="VC",]$len)
mean(df[df$supp=="OJ",]$len)

## 1.3
mean(df[(df$supp=="VC")&(df$dose==0.5),]$len) 
mean(df[(df$supp=="VC")&(df$dose==1),]$len)
mean(df[(df$supp=="VC")&(df$dose==2),]$len) 
mean(df[(df$supp=="OJ")&(df$dose==0.5),]$len)
mean(df[(df$supp=="OJ")&(df$dose==1),]$len)
mean(df[(df$supp=="OJ")&(df$dose==2),]$len) 

## 1.4
df$dose <- as.factor(df$dose)
df$supp <- as.factor(df$supp)
result_int <- aov(len ~ dose * supp, data = ToothGrowth)
anova(result_int)

## 1.5
with(ToothGrowth, interaction.plot(factor(dose), supp, len))

## 1.6
# Tukey
TukeyHSD(result_int)

# Scheffe
library(agricolae)
scheffe.test(result_int, 'supp', alpha=0.05, console=T)

# Bonferroni
LSD.test(result_int, "supp", p.adj="bonferroni", group=F,
         console=T)



#### 학습점검 ####

## 1.1
result_int <- aov(mpg ~ factor(cyl) * factor(am), data = mtcars)
anova(result_int)

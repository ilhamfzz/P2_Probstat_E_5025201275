#1a
Responden <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

#cek data
table_data = data.frame(Responden, x, y)
print(table_data)

sd(x-y)

#1b
t.test(x, y, alternative = "greater", var.equal = FALSE)

#1c
var.test(x, y)
t.test(x, y, mu = 0, alternative = "two.sided", var.equal = TRUE)


#2
install.packages("BSDA")
library(BSDA)

#2a
# Setuju

#2b 
tsum.test(mean.x=23500, sd(3900), n.x=100)

#2c
# Jawaban di README


#3a
# Jawaban di README

#3b
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, mean.y =2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE)

#3c
install.packages("mosaic")
library(mosaic)

plotDist(dist='t', df=2, col="blue")

#3d
qchisq(p = 0.05, df = 2, lower.tail=FALSE)

#3e
# Jawaban di README

#3f
# Jawaban di README


#4a
dataset <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(dataset)
head(dataset)
attach(dataset)

dataset$V1 <- as.factor(dataset$V1)
dataset$V1 = factor(dataset$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(dataset$V1)

group1 <- subset(dataset, V1=="Kucing Oren")
group2 <- subset(dataset, V1=="Kucing Hitam")
group3 <- subset(dataset, V1=="Kucing Putih")

#4b
bartlett.test(Length~V1, data=dataoneway)

#4c
qqnorm(group1$Length)
qqline(group1$Length)

#4d
# Jawaban di README

#4e
model1 <- lm(Length~Group, data=dataset)
anova(model1)
TukeyHSD(aov(model1))

#4f
library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")


#5
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

#5a
GTL <- read_csv("GTL.csv")
head(GTL)

str(GTL)

qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)

#5b
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova_test <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova_test)

#5c
sum_data <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(sum_data)

#5d
tukey_test <- TukeyHSD(anova_test)
print(tukey_test)

#5e
tukey.cld <- multcompLetters4(anova_test, tukey_test)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
sum_data$Tukey <- cld$Letters
print(sum_data)

write.csv("GTL_summary.csv")
#Q1 : Student Data Set

#1. Read the Data from Data Set into Data Frame
dataset <- read.csv("C:/Users/Anurag/Desktop/DA LAB/datasets/student.csv")
dataset

#2. Check the summary
summary(dataset)

#3. Check internal structure
str(dataset)

#4. Plot the R object
plot(dataset$NoOfHours, dataset$Freshmen_Score)
abline(h = mean(dataset$Freshmen_Score))

#5. Degree and direction of Linear association
cor(dataset$NoOfHours, dataset$Freshmen_Score)

#6. Create linear model
model <- lm(Freshmen_Score ~ NoOfHours, data = dataset)
model
summary(model)

#7. calculate degree of freedom
df.residual(model)

#8. predict 
pred <- predict(model, data.frame(NoOfHours = 8.5))
pred

#9. residual values
res <- resid(model)
res

#10. visualize regression
plot(dataset$NoOfHours, dataset$Freshmen_Score, col = "blue",main = "Scores Regression", cex = 1.3, pch = 16, xlab = "NoOfHours", ylab = "Freshmen_Score")
abline(model)
     
#Q2 : Height and weight
#formula = weight ~ Height

#Q3 : Cars Dataset

#1. Plot a scatter plot to visually understand the relationship between the predictor and response variables
head(cars)
scatter.smooth(x = cars$speed, y = cars$dist, main = "Dist ~ Speed")

#2. Spot any outlier observations in the variable by plotting a box plot.
par(mfrow = c(1, 2))
boxplot(cars$speed, main = "Speed", sub = paste("Outlier rows: ", boxplot.stats(cars$speed)$out))
boxplot(cars$dist, main = "Distance", sub = paste("Outlier rows: ", boxplot.stats(cars$dist)$out))

#3. Build a linear relationship model.
model <- lm(dist ~ speed, data = cars)
model
summary(model)

#4. visualize regression
plot(cars$speed, cars$dist, col = "blue", main = "Speed & Distance Regression", abline(model), cex = 1.3, pch = 16)

#cilmate dataset
climate_data <- read.csv("C:/Users/Anurag/Desktop/DA LAB/datasets/climate_change.csv")
summary(climate_data)

model <- lm(climate_data$Month ~ climate_data$Temp)
summary(model)

cor(climate_data)

plot(climate_data$Month, climate_data$Temp, abline(model), cex = 1.3, pch = 16)

boxplot(climate_data$Month)
boxplot(climate_data$Temp)

#placement dataset
placement_data <- read.csv("C:/Users/Anurag/Desktop/DA LAB/datasets/placement_data.csv")
summary(placement_data)

model <- lm(placement_data$hsc_p ~ placement_data$degree_p)
summary(model)

cor(placement_data)

plot(placement_data$hsc_p, placement_data$degree_p,abline(model), cex = 1.3, pch = 16, xlab = "hsc_p", ylab = "degree")

par(mfrow=c(1,2))
a <- placement_data
boxplot(a$hsc_p,main="hsc_p",sub=paste("Outlier rows:"),boxplot.stats(a$hsc_p)$out)
boxplot(a$degree_p,main="degree",sub=paste("Outlier rows:"),boxplot.stats(a$degree_p)$out)





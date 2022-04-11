# installing package MASS for Boston data
install.packages("MASS")
library("MASS")
Question2=Boston
head(Boston)
summary(Boston)

# Q2.a. showing the details of Boston and finding the mean, median, min, & max
Boston
B <- Boston
mean(B$crim)
median(B$crim)
min(B$crim)
max(B$crim)

# Q2.b. finding the relationships dummy vars of CHAS as charles river and MEDV as median value of owner
unique(B$chas)
B$chas <- as.factor(B$chas)
plot(B$chas,B$medv,xlab="charles river",ylab="median value of owner")

# Q2.c. rewlationship between MEDV with other vars in dataset and make table of coefficients and p-value
model1 <- lm(B$medv~.,data = B)
model1
summary(model1)

# Q2.d. finding the linear relationships of the model
model2=lm(B$medv~B$rm)
summary(model2)
predictions <- predict(model2,data.frame=(B$rm=c(7,8,10,20)))
predictions
head(B$rm)

# Q.2.e. finding the linearity
test_data <- data.frame(rm=c(7,8,10,20))
test_data
predict(model2,newdata = test_data)
plot(B$rm,B$medv)+abline(model2,col="red")


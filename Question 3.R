# opening the jobs.txt
data1 <- read.table("/Users/noviawidyachairani/Desktop/Graduate/Macro Theory & Policy/R Datas/CA1/jobs.txt", sep = " ", header = T)
View(data1)

# Q3.a. Create two new columns: U : Average years employed before becoming unemployed. E : Average years unemployed before becoming employed.
data1$U <- (data1$job_finding+data1$job_separation)/data1$job_finding
data1$E <- (data1$job_finding+data1$job_separation)/data1$job_separation

# Q3.b. Finding the mean of job finding rate and call it 𝑓, then find the unemployment rate using this formula
f <- mean(data1$job_finding)
data1$unemployment_rate <- (1/((f/data1$job_separation)+1))

# Q3.c. Find linear model between job separation rate and the unemployment rate and find the coefficient of this model and draw a graph and show the model on it
model1 <- lm(data1$job_separation~data1$unemployment_rate)
model1
plot(y=data1$job_separation,x=data1$unemployment_rate,ylab="job_seperation_rate",xlab="unemployment_rate")
abline(model1,col="red")


# Q1.a. making matrix
mat1 <- matrix(data = c(7, 4, 0, -6, 2, 2, 3, -1, -4, 0, 1, 0, -5, 3, 6), nrow = 3, ncol = 5)
mat1
class(mat1)

# Q1.b. changing the matrix version to data fram, rename it, and sums it
df1 <- as.data.frame(mat1)
df1
colnames(df1) <- c("A","B","C","D","E")
df1
class(df1)
colSums(df1)["D"]
rowSums(df1)[3]

# Q1.c. vector length 10, with mean and standard deviation
country <- c("c1","c2","c3","c4","c5","c6","c7","c8","c9","c10")
class(country)
GDP <- dnorm(seq(10),mean = 40000, sd = 10000)
life.expectancy <- dnorm(seq(10),mean = 75, sd = 13)
df1 <- data.frame(country,GDP,life.expectancy)

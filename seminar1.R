my.matrix1 <- matrix(data = c(1,2,30,40,500,600), nrow = 3, ncol = 2, byrow = TRUE, 
                     dimnames = NULL)
my.matrix1

my.data <- read.csv("http://uclspp.github.io/PUBLG100/data/polity.csv")
dim(my.data)
my.data$country
my.data[1:10,]
head(my.data)
str(my.data)

levels(my.data$country)

my.data <- my.data[my.data$year==1946,]
my.data

summary(my.data$polity2)
summary(my.data)

table(my.data$nato, my.data$polity2)

my.data[ which(my.data$nato==1 & my.data$polity2==10)]

boxplot(my.data$polity2 ~ as.factor(my.data$nato),
        frame = FALSE,
        main = "Polity IV Scores of NATO founders vs others in 1946",
        xlab = "NATO member",
        ylab = "Polity Score")

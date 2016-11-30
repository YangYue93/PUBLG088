rm(list = ls())

#read
library(readxl)
df <- read_excel("hsb2.xlsx")

#hist
hist(df$science, main = "Histogram of Science Scores", xlab = "Science Score")

science_mean <- mean(df$science)

science_median <- median(df$science)

science_score <- table(df$science)
sorted_science_score <- sort(science_score, decreasing = T)
science_mode <- sorted_science_score[1]

science_range <- range(df$science)

science_variance <- var(df$science)

science_sd <- sd(df$science)

quantile(df$science, c(0.25,0.5,0.75))

science_range <- diff(science_range)

#factor
df$gender <- factor(df$female, labels = c("Male","Female"))

df$race <- factor(df$race, labels = c("Black","Asian","Hispanic","White"))

table(df$race)

#subset
girls <- subset(df, gender == "Female")
boys <- subset(df, gender == "Male")

mean(boys$science)

#barplot
df$socioeconomic_status <- factor(df$ses, labels = c("Low","Middle","High"))
table(df$socioeconomic_status)
barplot(table(df$socioeconomic_status))

#scatter plot
par(mfrow=c(1,2))
plot(df$math, df$science)
plot(df$gender, df$science)






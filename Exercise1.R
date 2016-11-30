getwd()

a <- c(2,4,6,8,10)
a <- a[-5]

b <- matrix(c(3,6,9,2,3,5,54,54-6,54-12), nrow=3, ncol=3, byrow=TRUE)
b
diag(b) <- 1
b

df <- read.csv("http://uclspp.github.io/PUBLG100/data/polity.csv")
df <- df[ df$year == 1991, ]
head(df)

summary(df$democ)

table(df$democ)

df <- df[df$democ>=0,]
head(df)

help("hist")

hist(df$democ)

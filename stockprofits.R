library(dplyr)
library(magrittr)

df <- read.csv(file.choose())
head(df)

#Change the class of the column Date
date <- as.Date(df$Date, "%Y-%m-%d")
class(data$date)
#Create a new data frame with only the values of date and adj.close
data <- data.frame(date, "price_t" = df$Adj.Close)
head(data)

#Add the price shift 1 row in a new column price_t-1
data <- mutate(data, price_t1 = lag(price_t, 1))
head(data)

#Calculate the returns of the stock 
#Profit = selling price - purchase price
data <- mutate(data, returns = (price_t / price_t1) - 1)
head(data)

#Plot and analyze the prices
plot(x = data$date, y = data$price_t, main = "Prices",
     xlab = "Date", ylab = "Price_t", type = "l", col="blue")

#Look at the returns instead of the prices
plot(x = data$date, y = data$returns, main = "Profit",
     xlab = "Date", ylab = "Returns", type = "l", col="black")



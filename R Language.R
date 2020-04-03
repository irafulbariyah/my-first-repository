
library(ggplot2)
library(dplyr)
library(gapminder)

#no5
datasetth <- read.csv('tahun.csv',sep=",",header=TRUE)

yearly <- datasetth %>% group_by(tahun) %>% summarise(total_sales = sum(sales), tot_profit = sum(profit), tot_customer = n())

provitmax <- filter(yearly, tot_profit == max(tot_profit))

#no6
ggplot (dataset, aes(sales,profit)) + geom_point(colour="red")
    + labs(title = "Sales VS Profit 2014-2015")

#no6fix
plottt <- datasetth %>% select(profit,sales,tahun) %>% filter(tahun %in% c("2014","2015"))

attach(plottt)

mycol <- c(x = "dodgerblue2", y = "green")


plot(sales~profit, 
     main= "Sales Vs Profit 2014-2015", 
     xlab = "Sales", ylab="Profit",
     pch = 1, 
     frame = FALSE 
)

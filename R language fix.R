
dataset <- read.csv('ria.csv')

library(dplyr)

#no1
dataset1 <- dataset %>% select(customer_id, sales) %>% filter(sales == max(sales))

#no2
dataset2 <- dataset %>% select(category, sub_category,profit)%>% filter(category == "Office Supplies")

#no3

dataset3 <- dataset %>% select(profit) %>% filter(profit <=0)

#no4
dataset4 <- dataset %>% select(customer_id,sales) %>% filter(customer_id %in% c("JE-16165,KH-16510,AD-10180"))%>% group_by(customer_id) %>% summarise(total_sales=sum(sales)) %>% filter(total_sales == max(total_sales))
                         
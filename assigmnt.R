setwd("E:/Statisrical progamming")
bank=read.csv("dataset_1_bank_client_contact.csv")
attach(bank)
bank
summary(bank$age)

library(ggplot2)

#age

ggplot(bank,aes(x=age))+
  geom_histogram(fill = "cornflowerblue",
                 color = "white")+labs(title = "Participants by age",x="Age")

library(scales)



summary(bank$age)

ggplot(bank, 
       aes(x = age, 
           y= ..count.. / sum(..count..))) +
  geom_histogram(fill = "cornflowerblue", 
                 color = "white") + 
  labs(title="Participants by age", 
       y = "Percent",
       x = "Age") +
  scale_y_continuous(labels = percent)

ggplot(bank, aes(x = age)) +
  geom_density(fill = "indianred3", bw = 8) + 
  labs(title = "Participants by age")

#duration

summary(bank$duration)

ggplot(bank,aes(x=duration))+
  geom_histogram(fill = "cornflowerblue",
                 color = "white")+labs(title = "last contact duration, in seconds ",
                                       x="Duration")

ggplot(bank, 
       aes(x =duration, 
           y= ..count.. / sum(..count..))) +
  geom_histogram(fill = "cornflowerblue", 
                 color = "white") + 
  labs(title="last contact duration, in seconds", 
       y = "Percent",
       x = "Duration") +
  scale_y_continuous(labels = percent)

ggplot(bank, aes(x = duration)) +
  geom_density(fill = "indianred3", bw = 25) + 
  labs(title = "last contact duration, in seconds")

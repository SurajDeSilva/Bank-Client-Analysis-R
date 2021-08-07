ggplot(bank,
       aes(x = age, 
           y = duration)) +
  geom_point(color= "steelblue") +
  geom_smooth(method = "lm")+labs(title  = "duration vs age")
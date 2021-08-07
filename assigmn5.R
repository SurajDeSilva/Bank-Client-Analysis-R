
ggplot(bank, 
       aes(x = job, 
           y = duration)) +
  geom_boxplot(fill = "indianred3", 
               color = "black") + labs(title  = "job by marital")

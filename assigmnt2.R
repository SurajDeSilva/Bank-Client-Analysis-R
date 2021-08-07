
plotdata <- bank %>%
  count(education) %>%
  mutate(pct = n / sum(n),
         pctlabel = paste0(round(pct*100), "%"))


ggplot(plotdata, 
       aes(x = reorder(education, -pct),
           y = pct)) + 
  
  geom_bar(stat = "identity", 
           fill = "indianred3", 
           color = "black") +
  geom_text(aes(label = pctlabel), 
            vjust = -0.25) +
  
  scale_y_continuous(labels = percent) +
  
  labs(x = "education", 
       y = "Percent", 
       title  = "education status")+theme(axis.text.x = element_text(angle = 45, 
                                                                         hjust = 1))

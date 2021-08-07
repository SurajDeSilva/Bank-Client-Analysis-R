plotdata <- bank%>%
  group_by(marital,housing) %>%
  summarize(n = n()) %>% 
  mutate(pct = n/sum(n),
         lbl = scales::percent(pct))

ggplot(plotdata, 
       aes(x = factor(marital),y = pct,
           fill = factor(housing)))+ geom_bar(stat = "identity",
                                              position = "fill") +
  scale_y_continuous(breaks = seq(0, 1, .2), 
                     label = percent) +
  geom_text(aes(label = lbl), 
            size = 3, 
            position = position_stack(vjust = 0.5)) +
  scale_fill_brewer(palette = "Set2") +
  labs(y = "Percent", 
       fill = "housing",
       x = "marital",
       title = "Housing Loan by marital") +
  theme_minimal()
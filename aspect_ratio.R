library(tidyverse)

data1 <- data.frame(rnorm(100,50,3)) %>% 
  mutate(group = 1)
colnames(data1) <- c("value", "group")

data2 <- data.frame(rnorm(100,53,5)) %>% 
  mutate(group = 2)
colnames(data2) <- c("value", "group")

df <- rbind(data1, data2)




ggplot(df, aes(x = group, y = value, fill = factor(group))) +
  geom_col() +
  ylab("Value") +
  scale_x_discrete("") +
  scale_fill_discrete(name= "Group", labels = c("Group 1", "Group 2"))

#ggsave("aspect_ratio.png")
  


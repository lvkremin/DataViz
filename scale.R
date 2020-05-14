library(tidyverse)

data1 <- data.frame(rnorm(100,75,3)) %>% 
  mutate(group = 1)
colnames(data1) <- c("value", "group")

data2 <- data.frame(rnorm(100,53,5)) %>% 
  mutate(group = 2)
colnames(data2) <- c("value", "group")

df <- rbind(data1, data2)

filter(df, group == "1") %>% 
  ggplot(aes(x = group, y = value, fill = factor(group))) +
  geom_col() +
  ylab("Value") +
  scale_x_discrete("Group 1") +
  theme(legend.position = "none") +
  ylim(0, 8000)

ggsave("scale1.png")

filter(df, group == "2") %>% 
  ggplot(aes(x = group, y = value, fill = factor(group))) +
  geom_col() +
  ylab("Value") +
  scale_x_discrete("Group 2") +
  theme(legend.position = "none") +
  ylim(0, 6000) +
  scale_fill_manual(values = "#00BFC4")

ggsave("scale2.png")
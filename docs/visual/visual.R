library(ggplot2)
library(dplyr)

dfSum <- df %>% 
  group_by(z) %>% 
  summarise(x = mean(x), y = mean(y))%>%
  rename(z2 = z)

dfSum

df <- data.frame(
    x = rnorm(120, c(0, 2, 4)),
    y = rnorm(120, c(1, 2, 1)),
    z = letters[1:3]
)

df2 <- select(df, -z)

plt <- ggplot(data=df, aes(x=x, y=y)) + 
  geom_point(data = df2, color="grey70") +
  geom_point(aes(color=z)) +
  # geom_point(data = dfSum, aes(color=z2), size = 4) + 
  geom_smooth() +
  facet_wrap(~z) + 
  theme(
    panel.background = element_rect(fill = "transparent")
  )

ggsave(filename = './plot.png', plot = plt, device = 'png', bg = 'transparent')

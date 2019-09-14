install.packages("ggplot2")

library(ggplot2)

gapminder <- read.table("gapminder.txt", header=TRUE)

head(gapminder)

ggplot(data = gapminder, aes(x = year, y = lifeExp, by=country)) + #aes is aestethic, global mapping
  geom_point() +
  geom_line(color="blue") 

#create window with that data and that aestethic, then plus the geom points tells it to plot the points
#adding more things to it. they are layers, and the order they are applied matters
#aes is only for pulling data. Dont need this function for just chaning color to blue or something

#?ggplot

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) +
  geom_point(shape=17, size=1, alpha=0.5) +
  scale_x_log10() +
  geom_smooth(method = "lm", size=1.5)

az_row <- startsWith(as.vector(gapminder$country),c('A','Z'))
az_countries <- gapminder[az_row,]

lifeExp_plot <- ggplot(data = az_countries, aes(x=year, y=lifeExp, color=continent)) +
  geom_line() +
  facet_wrap(~country) +  #~argument, specify by
  labs(
    x = "Year", ##x-axis title
    y = "Life expectancy", ##y-axis title
    title = "Figure 1", #graph title
    color = "Continent" ##change title of legend
  ) +
  theme(axis.text.x=element_text(angle = 45), axis.ticks.x=element_blank())

ggsave(filename="lifeExp.png", plot = lifeExp_plot, width=12, height=10, dpi=300, units="cm")

ggsave("myPlot.pdf") #unless specified, will default to last plot made.

ggplot(data=gapminder[gapminder$country=="United_States",], aes(x=year,y=lifeExp)) +
  geom_col(color="red", fill="purple")

az_rowE <- startsWith(as.vector(gapminder$country),c('E'))
az_countriesE <- gapminder[az_rowE,]

ggplot(data = az_countriesE, aes(x=year, y=pop/1000000, fill=continent)) +
  geom_bar() +
  facet_wrap(~country) +  #~argument, specify by
  labs(
    x = "Year", ##x-axis title
    y = "Population (Million)", ##y-axis title
    title = "Figure 2", #graph title
    color = "Continent" ##change title of legend
  ) +
  theme(axis.text.x=element_text(angle = 45), axis.ticks.x=element_blank())

ggplot(data=gapminder, aes(x=continent, y=lifeExp)) + 
  geom_bar(aes(fill = continent), stat="summary",fun.y="mean") 

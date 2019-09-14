myDataFull <- read.table("gapminder.txt", header=TRUE)

#select data from Canada

Canada <- myDataFull[myDataFull$country=="Canada",]
Canada

#plot life expectancy

plot(Canada$year,Canada$lifeExp)

#what about trends and stuff

png("Canada.png") #opening a png device to write plot to

plot(Canada$year, Canada$lifeExp, type="l", col="blue")

dev.off() #closes the device that we opened to write the png to

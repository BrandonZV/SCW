gapminder <- read.table("gapminder.txt", header=TRUE)

fahrenheit_to_celsius <- function(temp){
  celsius <-  (temp - 32)*(5/9)
  return(celsius)
}
fahrenheit_to_celsius(32)
fahrenheit_to_celsius(100)

celsius_to_kelvin <- function(tempc){
  kelvin <- tempc+273.15
  return(kelvin)
}
celsius_to_kelvin(10)

fahrenheit_to_kelvin <- function(tempf){
  celsius <- fahrenheit_to_celsius(tempf)
  kelvin <- celsius_to_kelvin(celsius)
  return(kelvin)
}
fahrenheit_to_kelvin(96)

mean_life_expectancy <- function(Continent){
  lifeExp_continent <- gapminder[gapminder$continent==Continent,"lifeExp"] #not subsetting column, so don't need to do shiiittttt
  lifeExpMean <- mean(lifeExp_continent)
  return(lifeExpMean)
}
mean_life_expectancy("Europe")

?unique()
un <- unique(gapminder[,1])

fifty <- function(){
  un <- unique(gapminder[,2])
  for(i in un){
     m <- mean(gapminder[gapminder$continent==i,"lifeExp"])
     if(m == 50){
       print("50!")
     }else if(m<50){
       print(paste0(i, "'s life expectancy is less than 50!"))
     }else{
       print(paste0(i, "'s life expectancy is more than 50!"))
     }
  }
}

fifty()


menuItems <- c("chicken","soup","salad","tea")
menuType <- factor(c("solid","liquid","solid","liquid"))
menuCost <- c(4.99,2.99,3.29,1.89)
myorder_df <- data.frame(menuItems,menuType,menuCost)

for(items in myorder_df$menuItems){
  myorder_df_subset <- myorder_df[myorder_df$menuItems==items,]
  print(items)
  print(myorder_df_subset$menuCost)
  print(myorder_df_subset[,3])
}



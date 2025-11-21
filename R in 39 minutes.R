# R in 39 minutes 

5 + 7  #Normal addition without using variables

abs(-17) # Modulus/Absolute Function 

x<- -12 # Assigning the value to a variable 
x + 7

y<- c(-12,6,0,-1) # Creating a vector variable 
2*y

# I have loaded the ScoobyDoo dataset 
View(Scooby.Doo.Complete...Episode.List...Update.9.15.21) # Viewing the dataset 

# Extracting information from dataset 
mean(Scooby.Doo.Complete...Episode.List...Update.9.15.21$run.time)
mean(Scooby.Doo.Complete...Episode.List...Update.9.15.21$imdb)
# e null values are there so we have to remove them 
mean(Scooby.Doo.Complete...Episode.List...Update.9.15.21$imdb, na.rm = TRUE)

library(tidyverse) # Attachig the libraries 

?mpg # Tells us about the dataset 
?mean # Tells us about the functiNot getting the means above as somon written infront of the ?

glimpse(mpg) # Gives a top level view of dataset 

filter(mpg,cty>= 20) # Creates a filter to execute the query 

mpg_ford <- filter(mpg, manufacturer = "ford") #Creating a subdataset using filter function 
View(mpg_ford)

mpg_metric <- mutuate(mpg, cty_metric = 0.425144*cty) #Changing the unit of cty from mpg to kmpg

mpg %>%
  group_by(class) %>%
  summarise(mean(cty),median(cty))

# Data Visualisation with ggplot2 (grammar of graphics)

ggplot(mpg,aes(x =cty)) + geom_histogram() + labs(x = "City Mileage")  # Plotting histogram w.r.t cty 

# labs() add the labels
# geompoint() Creates Scatter charts 
# geom_freqpoly() Plots line graphs 
# geom_smooth() Generates regression line.

ggplot(mpg, aes(x = cty, y = hwy, color = class)) # Gives different color to differenr class values 
*


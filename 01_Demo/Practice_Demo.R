library(jsonlite)
View(demo_table)
plt <- ggplot(mpg, aes(x=manufacturer, y=hwy))
library(tidyverse)
mpg_summary <- mpg %>% group_by(class) %>% summarise(Mean_Engine=mean(displ), .groups = 'keep')
plt <-ggplot(mpg_summary, aes(x=class, y=Mean_Engine))
plt+ geom_point(size=4) + labs(x="Vehicle Class", y="Mean Engine Size")

#import dataset into ggplot2
plt <- ggplot(mpg, aes(x=manufacturer, y=hwy))
plt + geom_boxplot()+
  theme(axis.text.x = element_text(angle=45, hjust = 1))+ geom_point()

#Create a summary table
mpg_summary <- mpg %>% group_by(class) %>% summarise(Mean_Engine=mean(displ), SD_Engine=sd(displ), .groups = 'keep')

#Import dataset into ggplot2
plt <- ggplot(mpg_summary, aes(x=class, y=Mean_Engine))

#Add a Scatter plot with labels and overlay with error bars

plt + geom_point(size=4) + labs(x="Vehicle Class", y="Mean Engine Size") +
  geom_errorbar(aes(ymin=Mean_Engine-SD_Engine, ymax=Mean_Engine+SD_Engine))

#Test normality of mtcars dataset
#Visualize distribution using density plot
ggplot(mtcars, aes(x=wt)) + geom_density()

#Perform Shapiro test on mtcars dataset
shapiro.test(mtcars$wt)

#Import used car dataset
population_table <- read.csv('used_car_data.csv', check.names = F, stringsAsFactors = F)


# Import dataset into ggplot
plt <- ggplot(population_table, aes(x=log10(Miles_Driven)))

#Visualize distribution using density plot
plt +geom_density()

#Randomly sample 50 data points
sample_table <- population_table %>% sample_n(50)

# Import dataset into ggplot2
plt <- ggplot(sample_table, aes(x=log10(Miles_Driven)))

#Visualize distribution using density plot
plt + geom_density()

#Compare sample versus population means
t.test(log10(sample_table$Miles_Driven), mu = mean(log10(population_table$Miles_Driven)))

#2T-test example
#generate 50 randomly sampled data points
sample_table <- population_table %>% sample_n(50)

#generate another 50 randomly sampled data points
sample_table1 <- population_table %>% sample_n(50)

#run two sample t-test and compare means of the two samples
t.test(log10(sample_table$Miles_Driven), log10(sample_table1$Miles_Driven))

library(dplyr)

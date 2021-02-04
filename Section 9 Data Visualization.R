# 69th Video
#Data Visualization
# Topic 1: Base Package (base Visualization and advanced visualziation), this is inbuilt in R
# Topic 2: Ggplot2 Package

# Base Package in R
# scatterplots: good for two numerical values
# line charts
# Bar Plots
# Pie Charts
# Histograms
# Density Plots
# Box Plot

# Advance Visualization
# Mosaic Plot: used in categorical variables
# Heat Map
# 3d graph
# Correlation Plot
# Word Cloud

# Predicting my sales (dependent) on various independent variables, like retail locations, product selling in different locations retail etc
#some of the independent variables are numerical, categorical in nature 

#Codes for Packages
plot(mtcars$hp, mtcars$mpg) #used as scatterplot

#Better way of writing above
  plot(mtcars$hp, mtcars$mpg, type = "p",
       xlim = c(0, max_hp),
       ylim = c(0,max_mpg), xlab = "Horsepower",
       ylab = "Miles per gallon", main = "horsepower vs Mileage")
  
#Example 1
x <- c(1,2,3,4,5)
y <- c(1,5,3,2,0)
plot(x,y)

# Example -2

dose <- c(20, 30, 40, 50, 60)

drugA <- c(16, 20, 27, 40, 60)

drugB <- c(40, 31, 25, 18, 12)

plot(dose, drugA)

plot(dose, drugB)

help(plot)
plot(dose, drugA, type="p")

plot(dose, drugA, type="l")

plot(dose, drugA, type="b")

plot(dose, drugA, type="c")

plot(dose, drugA, type="o")

plot(dose, drugA, type="h")

plot(dose, drugA, type="s")

plot(dose, drugA, type="n")



#with other arguments
plot(dose, drugs, type = "p")  #by default its p (points)
#other arguments as:, its better to check each argument and test it

#p: points
#l: for lines
#b: for both (point and lines)
#c: for the lines part alone of "b"
#o: over plotted
#h: for histograms
#s: for stair steps
#n: no plotting

#Example 3

# Load the MASS package

library(MASS)

str(mtcars)

# https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html

########################################################

#[, 1] mpg Miles/(US) gallon

#[, 2] cyl Number of cylinders

#[, 3] disp Displacement (cu.in.)

#[, 4] hp Gross horsepower

#[, 5] drat Rear axle ratio

#[, 6] wt Weight (1000 lbs)

#[, 7] qsec 1/4 mile time

#[, 8] vs Engine (0 = V-shaped, 1 = straight)

#[, 9] am Transmission (0 = automatic, 1 = manual)

#[,10] gear Number of forward gears

#[,11] carb Number of carburetors

########################################################

summary(mtcars)

plot(mtcars$hp, mtcars$mpg) #plotting two different attributes of same dataframe

plot(mtcars$hp, mtcars$mpg, xlab = "Horsepower", ylab = "Gas mileage")

plot(mtcars$hp, mtcars$mpg, xlab = "Horsepower", ylab = "Gas mileage", main = "MPG vs Horsepower")

# Compute max_hp

max_hp <- max(mtcars$hp)

# Compute max_mpg

max_mpg <- max(mtcars$mpg)

plot(mtcars$hp, mtcars$mpg,type = "p",
     
     xlim = c(0, max_hp), #here i want labelling from 0 to max of horse power on x axis, by using max function
     
     ylim = c(0, max_mpg), xlab = "Horsepower", #from 0 to max of mileage on y axis by using max function
     
     ylab = "Miles per gallon", main = "Horsepower vs Mileage")
#here xlim and ylim are the controlling part

#################################################################################
# 70 is for the code for above
# 70Data Visualization – mfrow

#Create a multi-paneled plotting window. The par(mfrow) function is handy for creating a simple multi-paneled plot, 
#while layout should be used for customized panel plots of varying sizes.

#Use This Command To Perform Above Mentioned Function:
  
  
  
# Adding details with par function
  
#########################################################################

# par function    <-          NEW FUNCTION

#View current setting

par()

# Assign the return value from the par() function to plot_pars

plot_pars <- par()

# Display the names of the par() function's list elements

names(plot_pars)

# Display the number of par() function list elements

length(plot_pars)

#########################################################################
#First thing to talk about is mfrow
#mfrow =c(row,col)

# Creating plot array with mfrow parameter

# Set up a two-by-two plot array
#what i am doing here is to create two graphs with in the same pannel
 
#below is 2,2: meaning 2 rows and 2 columns
#by default mfrow is 1,1
par(mfrow = c(2, 2))

# Plot y1 vs. x1

plot(anscombe$x1, anscombe$y1)

# Plot y2 vs. x2

plot(anscombe$x2, anscombe$y2)

# Plot y3 vs. x3

plot(anscombe$x3, anscombe$y3)

# Plot y4 vs. x4

plot(anscombe$x4, anscombe$y4)

# ------->>>

# Define common x and y limits for the four plots

xmin <- min(anscombe$x1, anscombe$x2, anscombe$x3, anscombe$x4)

xmax <- max(anscombe$x1, anscombe$x2, anscombe$x3, anscombe$x4)

ymin <- min(anscombe$y1, anscombe$y2, anscombe$y3, anscombe$y4)

ymax <- max(anscombe$y1, anscombe$y2, anscombe$y3, anscombe$y4)

# Set up a two-by-two plot array

par(mfrow = c(2, 2))

# Plot y1 vs. x1 with common x and y limits, labels & title

plot(anscombe$x1, anscombe$y1,
     
     xlim = c(xmin, xmax),#remember xlim and ylim are used to set ranges in plotting
     
     ylim = c(ymin, ymax),
     
     xlab = "x value", ylab = "y value",
     
     main = "First dataset")

# Do the same for the y2 vs. x2 plot

plot(anscombe$x2, anscombe$y2,
     
     xlim = c(xmin, xmax),
     
     ylim = c(ymin, ymax),
     
     xlab = "x value", ylab = "y value",
     
     main = "Second dataset")

# Do the same for the y3 vs. x3 plot

plot(anscombe$x3, anscombe$y3,
     
     xlim = c(xmin, xmax),
     
     ylim = c(ymin, ymax),
     
     xlab = "x value", ylab = "y value",
     
     main = "Third dataset")

# Do the same for the y4 vs. x4 plot

plot(anscombe$x4, anscombe$y4,
     
     xlim = c(xmin, xmax),
     
     ylim = c(ymin, ymax),
     
     xlab = "x value", ylab = "y value",
     
     main = "Fourth dataset")


# ------------------------------------------------------------------------------------
#76: You can create vectors of using rainbow(n),heat.colos(n),
# terrain.color(n),topo.colors(n) and cm.colors(n).
# 75: same as whats mentioned above

# ------------------------------------------------------------------------------------
# 77 & 78
# Line Chart
plot(AirPassengers,type="l")  #Simple Line Plot

#Example 2, when we need more than 2 lines, we use Line Function
# Create the data for the chart.
v <- c(7,12,28,3,41)

# Plot the bar chart. 
plot(v,type = "o")

# Plot the bar chart.
plot(v,type = "o", col = "red", xlab = "Month", ylab = "Rain fall",
     main = "Rain fall chart")

#Multiple Lines
# More than line can be drawn on the same chart by using the line() function
# Create the data for the chart.
t <- c(14,7,6,19,3)

lines(t, type = "o", col = "blue") #line function
#Line chart used when you have two numerical values and one of them is time

#################################################################################
# 79 Bar Plot
# The classic Bar Chart uses either horizontal or vertical bars (column chart) to show discrete, 
# numerical comparisons across categories. 
# One axis of the chart shows the specific categories being compared and 
# the other axis represents a discrete value scale.

# Bars Charts are distinguished from Histograms , 
# as they do not display continuous developments over an interval. 
# Bar Chart's discrete data is categorical data 

# Bar Plots are suitable for showing comparison between cummalitive totals across several groups
# stacked plots are used for bar plots for various categories



# Bar Plot

#Simple Bar Plot

counts <- table(mtcars$gear)

counts

barplot(counts)

barplot(counts, main="Car Distribution",xlab="Number of Gears", ylab = "Count")

barplot(counts, main="Car Distribution",xlab="Number of Gears", ylab = "Count", legend= rownames (counts))

barplot(counts, main="Car Distribution",xlab="Number of Gears", ylab = "Count", legend= rownames (counts), col = c("red", "yellow", "green"))

#Simple Horizontal Bar Plot with Added Labels, by default earlier horizontal was false

barplot(counts, horiz=TRUE)

barplot(counts, main="Car Distribution", horiz=TRUE,
        
        names.arg=c("3 Gears", "4 Gears", "5 Gears"))

#Stacked Bar Plot with Colors and Legend

counts <- table(mtcars$vs, mtcars$gear)

counts

barplot(counts, main="Car Distribution by

        Gears and V/S",
        
        xlab="Number of Gears",
        
        col=c("skyblue","red"),
        
        legend = rownames(counts))


#Grouped Bar plot

counts <- table(mtcars$vs, mtcars$gear)

counts

barplot(counts, main="Car Distribution by Gears

        and V/S",
        
        xlab="Number of Gears",
        
        col=c("darkblue","red"),
        
        legend = rownames(counts),
        
        beside=TRUE)

###############################################################################
#81 
#Pie Chart

#Simple Pie Charts

slices <- c(10, 12,4, 16, 8)

lbls <- c("US", "UK", "Australia", "Germany", "France")

pie(slices, labels = lbls, main="Pie Chart of Countries")

#Pie Chart with Annotated Percentages

pct <- round(slices/sum(slices)*100)

pct

lbls <- paste(paste(lbls, round(pct),"%",sep=" ")) # add % to

lbls

pie(slices,labels = lbls)

pie(slices,labels = lbls,col=rainbow(length(lbls)), main="Pie Chart of Countries")

#3D Exploded Pie Chart

#install.packages("plotrix")

library(plotrix)

slices <- c(10, 12, 4, 16, 8)

lbls <- c("US", "UK", "Australia", "Germany","France")

pie3D(slices,labels=lbls,explode=0.1,main="3D Pie Chart")

# ---------------------------------------------------------------------------------------------------
# Histogram
#A Histogram visualizes the distribution of data over a continuous interval or certain time period.
#Each bar in a histogram represents the tabulated frequency at each interval/bin.
#Histograms help give an estimate as to where values are concentrated,
#what the extremes are and whether there are any gaps or unusual values.

#They are also useful for giving a rough view of the probability distribution
#Histogram is a common variation of charts used to present distribution and relationships of a single variable over a set of categories.

##Histogram



#Simple histogram
hist(mtcars$mpg)

#Colored histogram

?hist

#The width of each of the bar can be decided by using breaks.

hist(mtcars$mpg, breaks = 4, col = "lightblue", xlab = "mpg", ylab = "freq")

hist(mtcars$mpg, breaks = 15, col=rainbow(7), xlab = "mpg", ylab = "freq")

#Change of bin

hist(AirPassengers, col=rainbow(7))

#Histogram of the AirPassengers dataset with 5 breakpoints

hist(AirPassengers, breaks=5)

# If you want to have more control over the breakpoints between bins,

# you can enrich the breaks argument by giving it a vector of breakpoints.

# You can do this by using the c() function:

# Compute a histogram for the data values in AirPassengers,

# and set the bins such that they run from 100 to 300, 300 to 500 and 500 to 700.

hist(AirPassengers, breaks= c(100, 300, 500, 700))

# We can use seq(x, y, z) function instaed of c()

# x = begin number of the x-axis,

# y = end number of the x-axis

# z = the interval in which these numbers appear.

hist(AirPassengers, breaks= seq(100, 700, 100))

# Note that you can also combine the two functions:

# Make a histogram for the AirPassengers dataset, start at 100 on the x-axis,
# and from values 200 to 700, make the bins 150 wide
hist(AirPassengers, breaks=c(100, seq(200,600, 150), 700))

# ------------------------------------------------------------------------------------
# 85: Density Plot
#A Density Plot visualizes the distribution of data over a continuous interval or time period
#Kernel Density Plot



density_data <- density(mtcars$mpg)



plot(density_data)



plot(density_data, main = "Kernel Density of Miles per gallon")



polygon(density_data, col = "skyblue", border= "black" )


# ------------------------------------------------------------------------------------------------------------
# 87: Box Plot
# A Box Plot is a convenient way of visually displaying the data distribution through their quartiles.
# Boxplot

vec <- c(3,2,5,6,4,8,1,2,3,2,4,30,36)

?boxplot

boxplot(vec)

boxplot(vec, varwidth = TRUE)

# Boxplot of MPG by Car Cylinders

# a formula, such as y ~ grp, where y is a numeric vector of data values

# to be split into groups according to the grouping variable grp (usually a factor).

boxplot(mpg~cyl, data = mtcars)

boxplot(mpg~cyl,data=mtcars, main="Car Milage Data",
        
        xlab="Number of Cylinders", ylab="Miles Per Gallon",col=(c("gold","darkgreen","Blue")))

# ------------------------------------------------------------------------------------------------------------------
# 89
# Mosaic Plot & Heat Map
#A mosaic plot Z is a graphical method for visualizing data from two or more qualitative variables.

# Mosiac Plot

data(HairEyeColor)

mosaicplot(HairEyeColor)

?mosaicplot

# Heatmap

# Heat map uses color gradient to make comparisons and

# when you want compare different categories across two dimensions you can make use heat map.

library(MASS)

mtcars

heatmap(as.matrix(mtcars))

?heatmap

heatmap(as.matrix(mtcars), Rowv = NA, Colv = NA, scale = "column", col = cm.colors(256),
        
        xlab = "Attributes", main = "heatmap")

# ----------------------------------------------------------------------------------------
# 93: Word Cloud Correlation Plot
#A visualization method that displays how frequently words appear in a given body of text, 
#by making the size of each word proportional to its frequency.

#Correlation Plot
library(corrplot)

#check whether variables are numeric or not
str(mtcars)

#Compute the correlation matrix for these variables
corrMatt <- cor(mtcars)

#generate the correlation ellipse plot
corrplot(corrMatt, method = "ellipse")

# WordCloud

#Instal the packages
install.packages("wordcloud")
install.packages("RColorBrewer")

#Load the packages
library("wordcloud")
library("RColorBrewer")

# Create model_table of manufacturer frequencies



rownames(mtcars)



model_table <- table(rownames(mtcars))



model_table



# Create the default wordcloud from this table



#scale - range of the size of the word



#freq - frequency of word



wordcloud(words = names(model_table),
          
          
          
          freq = as.numeric(model_table),
          
          
          
          scale = c(1.5, 0.25))



# Change the minimum word frequency



#min.freq - below min.freq word will not be plotted

wordcloud(words = names(model_table),
          freq = as.numeric(model_table),
          scale = c(1, 0.25),
          min.freq = 1)





















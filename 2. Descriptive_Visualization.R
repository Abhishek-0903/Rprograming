# to see entire graph click on plot and then click on ZOOM

ages = c(21,30,40,22,45,50,51,23,25,35)
plot(ages)

salary = c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot(salary)

# In doTryCatch(returnpr(expr), name, parentenv, handler)
# invalid graphics state - solution to this warning: 

plot(ages,salary)
plot(salary,ages)

help(plot)
####################################

#airquality = read.csv('path/airquality.csv',header=)
#Click on Import Ddataset
data()
airquality = datasets::airquality    # to upload built-in data sets

### top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
names(airquality) #names of all columns

# To see entire dataset click on airquality data set rows
###Columns
airquality[,c(1,2)]  # all rows and first two columns

df = airquality[,-6]  # excludes(hatana) column no. 6 and assign ne DataFrames df
df
View(airquality)
summary(airquality[,1])  # summary statics for columns

summary(airquality$Temp)

airquality$Wind #Display columns values

summary(airquality$Wind) # summary of wind columns


####### Summary of the Data #####

summary(airquality)  # Summary for all columns

############## Visualizaton
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type = "p")
plot(airquality)  #Scatterplot
help(plot)
plot(airquality$Ozone,airquality$Month)
plot(airquality$Month,airquality$Ozone)

# points and lines
plot(airquality$Wind, type = "p") # p=points l=lines b=both(point and line)
plot(airquality$Wind, type = "l")
plot(airquality$Wind, type = "b")
help(plot)

plot(airquality$Wind,
     xlab = 'Ozone Concentration',
     ylab = 'No of Instances',
     main = 'Ozone levels in NY city',
     col = 'red',
     type = 'l')

plot(airquality,col='red') # plot of entire data in red color

plot(airquality$Ozone,airquality$Solar.R) # X axis - Ozone Y axis - solar.r
plot(airquality$Solar.R,airquality$Ozone) # X axis - solar.r Y axis - Ozone

# Horizontal bar plot
barplot(airquality$Ozone,
        main = 'Ozone Concentration in air',
        ylab = 'Ozone levels',
        col = 'blue',
        horiz = T,
        axes = T)
help(barplot)

## Histogram

hist(airquality$Temp)

hist(airquality$Temp,
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.',
     col = 'blue',
     border = 'red')

help(hist)

# Single Box plot
help(boxplot)

boxplot(airquality$Wind,
        main = 'Boxplot',
        col = 'blue',
        border = 'red',
        horizontal = T)

boxplot.stats(airquality$Wind)$out  # outlier values

airquality$Ozone


# Multiple box plots
boxplot(airquality[,1:4],
        main = 'Multiple Box Plots',
        horizontal = TRUE,
        col = 'red')

#margin of the grid(mar)(bottom,left,top,right)
#no of rows and columns(mfrow),
#whether a border is to be included(bty)
#and position of the
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot(o,n,7,L,C,U)
help(par) # par means partition
par(mfrow=c(3,3),mar=c(1,2,1,2), las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type="l")
plot(airquality$Wind, type="l")
plot(airquality$Solar.R, type="l")
barplot(airquality$Ozone, main = 'Ozone Concentration in air',
        xlab = 'Ozone levels', col = 'green', horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

# Considering NA Values
airquality
max(airquality$Wind)
min(airquality$Temp)
min(airquality$Solar.R)
mean(airquality$Solar.R)
mean(airquality$Wind)

summary(airquality)
max(airquality$Solar.R, na.rm = T)
mean(airquality$Solar.R, na.rm = T) # rm means remove those na(not available) values
median(airquality$Ozone)
median(airquality$Ozone, na.rm = T)
min(airquality$Ozone)
min(airquality$Ozone, na.rm = T)

# Google following functions as variance
#var
#skewness
#kurtosis
#Density Plot

 
var(airquality$Wind)  # var to find variance
sd(airquality$Ozone)
sd(airquality$Ozone, na.rm = T)  # sd to find standard deviation

skewness(airquality$Ozone)  #error
kurtosis(airquality$Ozone)  #error

### var, sd function are buil-in function
### and for skewness, kurtosis functions we have to install packages(functions)

# Installing Packages

# when function is not available you have to install some packages/libraries.
# eg. mobile has some in built apps 
# - others download scanner, whatsapp, photo editor from play store
# which library to download for skewness
#google - skewness and kurtosis in r
# go to rbloggers.com
# library(moments)
# or go to rdocumentation.r
# type skewness - you will get the name of package as 'moments'
# go to rstudio
# click on packages in 3rd window - bottom right corner - Click on install
# type moments in packages, click checkbox - install dependencies - click install
# After installation, in search - search for installed 'moments', click that checkbox

# Or try: install.packages("moments")

skewness(airquality$Ozone,na.rm=T) 
kurtosis(airquality$Ozone,na.rm=T) 
skewness(airquality[,1:4],na.rm=T)

# Density Plot
plot(density(airquality$Wind))
plot(density(airquality$Ozone,na.rm=T))
??density  #Check Kernel Density Estimation

## In Class Exercise
e_quakes=datasets::quakes






#var

var(e_quakes$mag)

#skewness

skewness(e_quakes$mag) 


skewness(e_quakes$mag)

mean(e_quakes$mag)

#kurtosis

kurtosis(e_quakes$mag)



# HOME WORK
# iris_data<-datasets::iris
# perform all steps on iris dataset that you have performed on airquality and quakes dataset




# to import xml files in R, first install XML package
# 
install.packages("XML")










################################################################################









ages = c(21,30,40,22,45,50,51,23,25,35)
plot(ages)

salary = c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot(salary)
# In doTryCatch(return(expr), name, parentenv, handler) :
# invalid graphics state - Solution to this warning: Install ggplot2 from packages

plot(ages,salary)
plot(salary,ages)

help(plot)
#######################################
mtcars

#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
#Click on Import Ddataset
data()
airquality = datasets::airquality

####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
names(airquality) #names of all columns

# To see entire dataset click on airquality data set name from workspace 
######Columns
airquality[,c(1,2)] # all rows and first two columns

df = airquality[,-6] # excludes column no.6
df

summary(airquality[,1]) # summary statistics for column 1

summary(airquality$Temp)

airquality$Wind # display column values

summary(airquality$Wind) # summary of wind column


###########Summary of the data#########

summary(airquality) # summary for all columns

##################### Visualization
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p") 
plot(airquality) #scatterplot
help(plot)
plot(airquality$Ozone,airquality$Month)
plot(airquality$Month,airquality$Ozone)

# points and lines 
plot(airquality$Wind, type= "p") # p: points, l: lines,b: both
plot(airquality$Wind, type= "l")
plot(airquality$Wind, type= "b")
help(plot)

plot(airquality$Wind, 
     xlab = 'Ozone Concentration', 
     ylab = 'No of Instances', 
     main = 'Ozone levels in NY city',
     col = 'red',
     type='l')

plot(airquality,col='red') # plot of entire dataset - all columns

plot(airquality$Ozone,airquality$Solar.R)# x axis - Ozone, Y- solar.r
plot(airquality$Solar.R,airquality$Ozone) # x - solar.r, y - ozone

# Horizontal bar plot
barplot(airquality$Ozone, 
        main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', 
        col= 'blue',
        horiz = T,
        axes=F)
help(barplot)

#Histogram

hist(airquality$Temp)

hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', 
     col='blue',
     border='red')

help(hist)

#Single box plot
help(boxplot)

boxplot(airquality$Wind,
        main="Boxplot",
        col="blue",
        border='red',
        horizontal=T)

boxplot.stats(airquality$Wind)$out #outlier values

airquality$Ozone


# Multiple box plots
boxplot(airquality[,1:4],
        main='Multiple Box Plots',
        horizontal=TRUE,
        col='pink')

#margin of the grid(mar)(bottom,left,top,right), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot (o,n,7,L,C,U)
help(par)
par(mfrow=c(3,3),mar=c(1,2,1,2),  las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Wind, type= "l")
plot(airquality$Solar.R, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

# Considering NA values
airquality
max(airquality$Wind)
min(airquality$Temp)
min(airquality$Solar.R)
mean(airquality$Solar.R)
mean(airquality$Wind)

summary(airquality)
max(airquality$Solar.R,na.rm=T)
mean(airquality$Solar.R,na.rm=T)
median(airquality$Ozone)
median(airquality$Ozone,na.rm=T)
min(airquality$Ozone)
min(airquality$Ozone,na.rm=T)

# Google following functions as variance in R, etc
#var
#skewness
#kurtosis
#Density plot


var(airquality$Wind)
sd(airquality$Ozone)#,na.rm = T) Standard Deviation # because of NA values in ozone col - No o/p
sd(airquality$Ozone, na.rm = T)

skewness(airquality$Ozone) #error
kurtosis(airquality$Ozone) #error

# Installing Packages

# when function is not available you have to install some packages/libraries.
# eg. mobile has some in built apps 
# - others download scanner, whatsapp, photo editor from play store
# which library to download for skewness
#google - skewness and kurtosis in r
# go to rbloggers.com
# library(moments)
# or go to rdocumentation.r
# type skewness - you will get the name of package as 'moments'
# go to rstudio
# click on packages in 3rd window - bottom right corner - Click on install
# type moments in packages, click checkbox - install dependencies - click install
# After installation, in search - search for installed 'moments', click that checkbox

# Or try: install.packages("moments")

skewness(airquality$Ozone,na.rm=T) 
kurtosis(airquality$Ozone,na.rm=T) 
skewness(airquality[,1:4],na.rm=T)

# Density Plot
plot(density(airquality$Wind))
plot(density(airquality$Ozone,na.rm=T))
??density  #Check Kernel Density Estimation

## In Class Exercise
e_quakes=datasets::quakes






#var

var(e_quakes$mag)

#skewness

skewness(e_quakes$mag) 


skewness(e_quakes$mag)

mean(e_quakes$mag)

#kurtosis

kurtosis(e_quakes$mag)



# HOME WORK
# iris_data<-datasets::iris
# perform all steps on iris dataset that you have performed on airquality and quakes dataset




# to import xml files in R, first install XML package
# 
install.packages("XML")






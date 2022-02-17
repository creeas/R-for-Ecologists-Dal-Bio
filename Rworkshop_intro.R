#Day 1:
#Using R
#Today we will learn

#1. R and Rstudio basics, layout, shortcuts, understanding the console, objects, classes, operators, and the environment.
#2. Dataframes: importing, exploring, querying, cleaning, manipulating, summarizing, creating new dataframes
#3. Libraries and packages: loading, installing, help, functions.
#4  Visualization: basic plots.
#5. Introduction to RMarkdown.

################################################################################
##1. R and Rstudio basics, layout, shortcuts, understanding the console, objects, classes, operators, and the environment.
################################################################################

#Annotate your files by using # before the text. 
#Save you R code with ctrl-s. 
#Note your objects will not be saved, just your R script! 
#Friends don't let friends save their environments/objects! We will get into this...

#Create an object `a` using the `<-` syntax (shortcut Windows/Linux: "Alt" + "-"
#Mac: "Option" + "-". Here you are creating an object called `a` that is the sum of 1+1.

a <- 1+1 


#What is `a`? 
a

#Create a new object called `a` and overwrite the old a - **note** R will not tell you if you overwrite an object.
a <- 10

#What is the new value of `a`?
a

#Objects can be a number (whole or decimal), character (text), string of numbers, matrix, etc. Here, you can create an object with more than one value, the 'c' stands for concatenate.
b <- c(10,1,6,0)

#what is b?
b

#create an object called 'char' that is the word charactertext
char <- "charactertext"
char

#Create an object called 'stringofchar' that is three words
stringofchar <- c("sharks", "rays", "chimaeras")
stringofchar

#What are we doing here?

a <- c("a", "b")
a <- c(0,1)

#ANSWER: 

#Creating a list with two values first with characters "a" and "b" and then a list of numers 0 and 1.

#How can you see what is stored in your object `b`, `char`, and `stringofchar`?

#ANSWER:



#How do you create an object `a` that is two values 1 and 2?
#ANSWER:



#How do you overwrite `b` to be object `a`
#ANSWER:




#You can also define objects using math operators, `*` is multiplication. 

a<-3*3

a


#Use math operators to define a string of values. 

a <- c((1+2)*3/4,10*10,1-1)

#how can you see what your object a is?
#ANSWER:

a


#You can also use other operators such as mean, sum, min, and max.

x <- mean(a)
x

y <-sum(a)
y

y <-max(a)
y

#Write out two ways to create an object `z` that is the sum of 1,2,3,4,5,6,7.
#ANSWER:

z <- 1+2+3+4+5+6+7
z <- sum(1,2,3,4,5,6,7)
z <- sum(1:7)


#If you run the following line of code, what happens? Look at the error message - what does it mean?

a<-3*
  
#you can put the equation on two different lines and R will automatically read it
a <-3 +
  3 

#you can put the equation on two different lines and R will automatically read it
a <-3 +
   7
3 #does not read this one as there is no operator
#what is a?

a <- 3 + 
   3 +
   3 #reads this one, need the operator after the second 3
#what is a?

a <- c(3,  
  3 ,
  3) #reads this one, need the operator after the second 3


#what is a?

##############################
#UNDERSTANDING Object Classes#
##############################

#To make the best of the R language, you’ll need a strong understanding of the basic data types and data structures and how to operate on them.
#
#Data structures are very important to understand because these are the objects you will manipulate on a day-to-day basis in R. Dealing with object conversions is one of the most common sources of frustration for beginners.
#
#Everything in R is an object.
#
#R has 6 basic data types. (In addition to the five listed below, there is also raw which will not be discussed in this workshop.)
#
#character
#numeric (real or decimal)
#integer
#logical
#complex
#
#Elements of these data types may be combined to form data structures, such as atomic vectors. When we call a vector atomic, we mean that the vector only holds data of a single data type. Below are examples of atomic character vectors, numeric vectors, integer vectors, etc.
#
#character: "a", "swc"
#numeric: 2, 15.5
#integer: 2L (the L tells R to store this as an integer)
#logical: TRUE, FALSE
#complex: 1+4i (complex numbers with real and imaginary parts)
#
#R provides many functions to examine features of vectors and other objects, for example
#
#class() - what kind of object is it (high-level)?
#   typeof() - what is the object’s data type (low-level)?
#   length() - how long is it? What about two dimensional objects?
#   attributes() - does it have any metadata?
   

class(a)
a <- as.character(a)
a <- as.numeric(a)
class(char)
class(stringofchar)
stringofchar <- as.factor(stringofchar)



#####################################################
#UNDERSTANDING THE CONSOLE
#####################################################
#navigate to the console easily by hitting ctrl-2, 
#get back to the main window by hitting ctrl-1

#first use the console to run code that you don't want saved in your main script
#eg. hit ctrl-2
#type a, then hit enter.

#type 'b <- 3 + ' in the console - what happens?
#what does the "+" mean?
#now, in your main script type (ctrl-1 type '3' and run. 
3
#what happens? 

#navigate back to the console (ctrl-2)
#hit the up arrow (^), what happens?, to clear the console hit the arrow down button or erase the text. 

#what is the value in the square brackets beside your output in the console?
3
a <- c(0,2,3,4,5)
a 


b <- c (0,2,3,4,5)
b

#why is it always one?
#ANSWER


###############################################
#UNDERSTANDING THE ENVIRONMENT TAB (TOP RIGHT)
###############################################
#what is in the global environment?
#you have two columns: value and their structure
#what is 'a' by looking at the environment box?
a
#ANSWER:




#How can you view the objects in a database format?
View(a) #note the capitalization of View
View(char)
View(b) #toggle the filter buttons, search, arrow back, etc. 

#Use str to see what type of object `b`, `char`, and `stringofchar` are.
#use str (i.e structure) 
str(b)
str(char)
str(stringofchar)


################################################################################
#2. Dataframes: importing, exploring, querying, cleaning, manipulating, summarizing, creating new dataframes
################################################################################

##Importing:
#Load up a .csv file called `Cetaceans.csv`. R works with .csv files as opposed to excel files (.xls or .xlsx).  
#In your File Explorer navigate to the folder where your save the `Cetaceans.csv` file.  
#You can set the working directory `setwd` so that R will automatically check that folder when you load up files. 
#If your file is not in the folder that you `setwd` to, you will get an error message. 

#NOTE: THIS CETACEANS DATABASE IS FROM HIGHLAND STATISTIC'S WEBSITE FOUND HERE: 
#https://www.highstat.com/index.php/mixed-effects-models-and-extensions-in-ecology-with-r

#Check what the working directory is. The working directory is the file path R will follow to find the .csv file you specify
getwd() 

#Set the working directory (setwd) to the folder with the `Cetaceans.csv` file.
#**Note** in R the file paths have forward slashes. Such as C:/Workshop

setwd("/Users/cmull/Desktop/R courses/R Module/R-for-Ecologists-Dal-Bio/") 

#Use the `read.csv` function to pull your .csv file into R. Here we are creating an object called `data` and define that object as your .csv file

data <- read.csv("Data/Cetaceans.csv")


class(data)


#what do we know about this data based on the information in the environment tab?

#ANSWER:



#EXPLORING: 
#Take a look at at your `data` object.

#How can we look at the full database 
#ANSWER:



#What is the structure of the 'data'?
#ANSWER

str(data)



#what does the output tell us?
#ANSWER:



#look at the full database
data

#what is the output telling us?
#ANSWER:



#That is a lot to look at. Use the `head` function to look at the first 6 rows of your object `data` and `tail` to look at the last six rows.

head(data)

tail(data)

#You may want to know other details about the type of data in your database. What do the following lines of code tell you about your database?
dim(data)
length(data)

##CLEANING:
#Look at the column names in your database.
#**NOTE** having spaces or special characters in your database or column names is not a good idea! Remove them and replace with "." or "_". R will sometimes fix it for you. 
#double check that the columns names are ok

names(data)
#names look fine, no spaces or special characters. But, let's change the second column named 'X.Species.' to just 'Species'
names(data) <- c("Dolphin.ID","Species","Age","Sex","Stain","Location")


#Check the database for errors, such as has someone accidentally imputed the data incorrectly? Are there weird values in the columns? 
#A quick way to do this (we will learn more about outliers tomorrow) is to check the values in each column, check the types of data in each column
str(data)
summary(data)


#MANIPULATING

#The $ acts as a way to query the database, you will get an error if the column name is spelt wrong or doesn't exist. 
#The $ allows us to explore each of the columns a little better to get familiar with our data
#Use the `$` to query a column in your object `data`. 

data$Species

#First - what are two ways we can see the column names of our database called 'data'?
#ANSWER:

names(data)
summary(data)
str(data)

#Look at the values in the second column
data$Species
class(data$Species)
unique(data$Species) #should be only be used for factors
str(data$Species)

#What do each of these commands tell us out the data$Species column?
#ANSWER:

#data$Species - 
#class(data$Species) - 
#unique(data$Species) - 

#Let's look at the Age variable

data$Age

#why is this NULL?
#ANSWER:




#Explore the column 'Dolphin.ID'
#what values are in this column, how many levels, what is the structure?

head(data)
data$Dolphin.ID
class(data$Dolphin.ID)
range(data$Dolphin.ID)
levels(data$Dolphin.ID) #why is this NULL? 
data$Dolphin.ID <- as.factor(data$Dolphin.ID)

#you can switch between structure types, for example here the 'Dolphin.ID' column is an integer but really we want the values to be a factor  
#covert the column from a integer to a factor using the following code:

data$Dolphin.ID <- as.factor(data$Dolphin.ID)

#How can you check to see if it worked?
#ANSWER:

class(data$Dolphin.ID)


#Find the maximum value of age in the dataset from the column "Age" 

max(data$Age)

range(data$Age)

summary(data)


#Create an object `a` that is the maximum age in `data`.

a <-max(data$Age)


#What is the value of `a`?

a


#Write out the code for finding the smallest and mean age in the database.
#ANSWER:

range(data$Age)
a <- min(data$Age)

#Find the number of unique dolphin species that were sampled 

unique(data$Species)

#Use the `length` function to tell us how many entries are in the database.
#Does this tell us the number of unique species names?

length(data$Species)

#This just tells us how many entries are in the database

dim(data)

#Use the `length` and 'unique' function to tell us how many species 
#contributed to this database. 
length(unique(data$Species))
length(levels(data$Dolphin.ID)) #only works on factors not characters

#6 species are in this database


#SUBSETTING AND OPERATORS
#Now use the `subset` function to create a new database.
#We are going to use different operators, see here for a short summary of operators: https://www.statmethods.net/management/operators.html


#Make a database that is only those entries under the column `Species` that are **Stenellacoeruleoalba**. Call the new database `Stenaco_data`. **NOTE** the `==` syntax.
# = is assignment, == is a logical comparison 
data$Species
names(data)

Stenaco_data <- subset(data, data$Species =="Stenellacoeruleoalba")
Stenaco_data

#How many entries are in the `Stenaco_data` database?
#ANSWER:



#How many species are under the Species column in the Stenaco_data` database?
#ANSWER:



#Make a database that is only entries NOT from Stenellacoeruleoalba. Hint: using ! is equal to not.

Not_Stenaco_data <- subset(data, data$Species !="Stenellacoeruleoalba")
Not_Stenaco_data

unique(Not_Stenaco_data$Species)

#subset the database to include only individuals with ages greater than 25 years of age
names(data)

data_age <- subset(data, data$Age > 25)

#why is there no data?
#ANSWER:



#This can be what's know as a silent error! A dubious issue in R that requires paying attention to your dataset.

data_age <- subset(data, data$Age > 10)



#Subset the database to include only three species - "Delphinusdelphis", "Lagenorhynchusacutus", and "Phocoenaphocoena" 
#use the | notation to mean OR
threegroups <- subset(data, data$Species == "Delphinusdelphis" |data$Species == "Lagenorhynchusacutus"|data$Species == "Phocoenaphocoena")
unique(threegroups$Species)


#can also use this notation that is less verbose
threegroups <- subset(data, data$Species %in% c("Delphinusdelphis",  "Lagenorhynchusacutus",  "Phocoenaphocoena"))
unique(threegroups$Species)

three.sp.list <- c("Delphinusdelphis",  "Lagenorhynchusacutus",  "Phocoenaphocoena")

threegroups <- subset(data, data$Species %in% three.sp.list)
unique(threegroups$Species)

threegroups$Species
length(unique(threegroups$Species))
unique(threegroups$Species)


#subset the database to include only "Delphinusdelphis" species that are greater than 10 years old
#use the & function for a two-condition subset
#query different columns, or the same column depending on what you are looking for
data_ddel_10 <- subset(data, Species == "Delphinusdelphis" & Age >10)
head(data_ddel_10)
summary(data_ddel_10)

#subset the database to include anything BUT "Delphinusdelphis", "Lagenorhynchusacutus", and "Phocoenaphocoena"
#here you use the != notation. The exclamation point means "is not" 
notthreegroups <- subset(data, data$Species != "Delphinusdelphis" & 
                           data$Species != "Lagenorhynchusacutus" &
                           data$Species !="Phocoenaphocoena")
#doublecheck that it got rid of these three species
unique(notthreegroups$Species)
length(unique(notthreegroups$Species))


#subset the database to include anything BUT Delphinusdelphis and those individuals less than 10 years of age
data_spp_age <- subset(data, Age >10  & Species != "Delphinusdelphis")
View(data_spp_age)
unique(data_spp_age$Species)

#subset the database to include species that match a string a values
#use the %in% operator

ages <- c(2,3,4,12,14)
data_ages<- subset(data, Age %in% ages)


#To get more information on a function, use the ? and then the function name. 
?subset
?mean
?max
?max


#SUBSETTING DATA USING [] 
#The square brackets `[]` are a way to subset vectors or dataframes. The database has two dimensions - rows and columns, and can be referenced separately or together and are separated by a comma. You can also use the `:` to mean through.

data[1,] #first row

data[,1] #first column 

data[1,1] #first row and first column

data[1:10, 1:3] #first ten rows and three columns

data[25:50,1:6] 

b[3]


a <- c(25,2,13,17, 22)
b <- c(0,2,3,4,5)
c <- cbind(a,b) #cbind = column bind
c
#what does this notation do?
c[1,1] 
c[2,1]
c[3,1]
c[1,2]
c[2,2]



#Create a new database that has only the columns `Dolphin.ID`, `Species`, and `Age`. There are two ways to do this

#First:
head(data)
names(data)
newdata <- data[,c(1,2,3)] # what does this mean in english?
head(newdata)

#second: 
newdata <- data[,c("Dolphin.ID", "Species", "Age")]
head(newdata)

#Which one is the best method??


#Create a new database that has only has the 1,10, and 30th row.

newdata <- data[c(1,10,30),]
newdata

#Change the name of the columns using this new way of subsetting
#change the second column named 'Species' to "Spp" 
names(data)[2] <- "Spp" 


#To keep our database clean, get rid of the some of the columns we won't be using. 
#Keep just the first four columns and first four rows, call the object 'test'

head(data)
test <- data[,c(1:4)] 
head(test)

#Keep the first four columns but call them by their column names, not by numbers
test <- data[,c("Dolphin.ID", "Species", "Age","Sex")]

#What went wrong?

test <- data[,c("Dolphin.ID", "Spp", "Age","Sex")]

head(test)
head(data)

##Libraries
#In R you can load packages where scripts and functions have already been written. To use a library, you first need to install the package. You use the `install.packages` function and specify the package inside the " ". Here we are loading in the `dplyr` package. Note, you will have to load the library each time you open R but only install the package once. 

install.packages("tidyverse")

#You will be asked to select a mirror for your download, select your location. Now load the library.

library(dplyr) 

#If you want to get some more information about the package use the `help` function. 

help(package = "dplyr")
vignette("dplyr")


#If you use a package, use the `citation` function to get the proper attibution. 
citation("dplyr")


########################################################
#3. Visualization: basic plots to check data.
########################################################
#Let's use a different database
#ABALONE DATA IS FROM HERE: 'https://archive.ics.uci.edu/ml/machine-learning-databases/abalone/abalone.data'

#Where is your abalone.csv file? what working directory are you in?
#ANSWER:

abalone <- read.csv("Data/abalone.csv")

#read in the abalone,csv file and call the new object 'abalone'
#ANSWER:



#BASIC PLOTTING
names(abalone)

#plot(x, y, data) plot(y~x)

plot(abalone$Rings, abalone$Length)
plot(abalone$Length ~ abalone$Rings)

#change the points to be filled in, pch = point character
plot(abalone$Rings, abalone$Length, pch = 19)

#change the colour, size, and transparency
color.adjust=adjustcolor("grey50", alpha=0.2)

plot(abalone$Rings, abalone$Length, pch = 17, col= color.adjust)

#change the x and y axis labels and customize the y axis 
plot(abalone$Rings, abalone$Length, pch = 19, col= color.adjust, 
     cex=2, xlab = "Rings", ylab = "Length", bty="l")

#plot a line of best fit on top
abline(0,.05, col= "red", lwd = 1.5, lty=2)


par(mfrow=c(2,1), mar=c(4,4,1,2))
plot(abalone$Rings, abalone$Length, pch = 19, col= color.adjust, 
     cex=2, xlab = "Rings", ylab = "Length", bty="l")
abline(0,.05, col= "red", lwd = 1.5, lty=2)

plot(abalone$Rings, abalone$Length, pch = 19, col= color.adjust, 
     cex=2, xlab = "Rings", ylab = "Length", bty="l")
abline(0.5, -0.5, col= "blue", lwd = 1.5, lty=2)

#plot a regression line
?lm
par(mfrow=c(1,1))
plot(abalone$Rings, abalone$Length, pch = 19, col= color.adjust, 
     cex=2, xlab = "Rings", ylab = "Length", bty="l")
lm<-lm(abalone$Length~abalone$Rings)
abline(lm, col="blue", lwd=5, lty=2)
abline(v = 10, col= "black", lwd = 3)

#smoothed line ontop of data
scatter.smooth(abalone$Rings, abalone$Length, pch = 19, col= col, 
     cex=2, xlab = "Rings", ylab = "Length" , lpars =
                    list(col = "red", lwd = 3, lty = 1))
points(abalone$Rings, abalone$Length, pch = 19, col= color.adjust, 
     cex=2)


plot(abalone)

names(abalone)

plot(abalone[,c("Sex", "Height", "Rings")])

#export the image to your current working directory
#what is your working directory?

getwd()

# 1. Open jpeg file
jpeg("Plots/new.rplot.jpg", width = 1400, height = 1400)
# 2. Create the plot
plot(abalone$Rings, abalone$Length, pch = 19, col= color.adjust, 
     cex=2, xlab = "Rings", ylab = "Length", cex.lab=2, cex.axis=2)
# 3. Close the file
dev.off() 

#look at your file - the text is too small, make it bigger
# 1. Open jpeg file
jpeg("Plots/new.rplot.jpg", units = "in", res = 300, width = 7, height = 5)
# 2. Create the plot
par(mar = c(1,1,1,1)+2)
par(oma = c(1,1,1,1))
plot(abalone$Rings, abalone$Length, pch = 19, col= color.adjust, 
     cex=2, xlab = "Rings", ylab = "Length", cex.lab = 2, cex.axis = 2)
# 3. Close the file
dev.off()


color.male=adjustcolor("red", alpha=0.2)
color.female=adjustcolor("blue", alpha=0.2)

#PLOT A two scatterplots on top of each other, male and female
males <- subset(abalone, Sex == "M")
females <- subset(abalone, Sex == "F")
par(mar=c(4,4,1,1))
par(oma = c(0,0,0,0))
plot(Rings~Length, data = males, col=color.male, 
   ylim=range(abalone$Rings), xlim = range(abalone$Length), xlab="Length",
   ylab="Rings", cex.lab=1, pch = 19)

points(Rings~Length, data = females, type="p", col=color.female, 
   ylim=range(abalone$Rings), xlim = range(abalone$Length), xlab="Length",
   ylab="Rings", cex.lab=0.8, pch = 19)

#BOXPLOTS
str(abalone)
par(mar=c(4,4,1,1))
par(oma = c(0,0,0,0))
boxplot(as.factor(abalone$Sex), abalone$Length, 
        xlab="Sex", ylab="Age") 

#pretty basic, add some colour
boxplot(as.factor(abalone$Sex), abalone$Length,  
   xlab="Sex", ylab="Length", 
   col=(c("darkred","darkgreen")), 
   axes=FALSE)
# Make x axis using Male-Female labels
axis(1, at=1:2, lab=c("Females", "Males"))
# Make y axis with horizontal labels that display ticks at 
# every 4 marks. 4*0:max_y is equivalent to c(0,4,8,12).
axis(2, las=1)
box(bty="l")

#SEE HERE FOR REFERENCE FOR BASE PLOTTING COMMANDS:
#https://www.statmethods.net/advgraphs/parameters.html




# Title: Assignment 2
# Subtitle: Crim 250: Statistics for the Social Sciences
# Name: Maria Cuellar
# Date: 09/23/2021


# Instructions: Copy your code, paste it into a Word document, and turn it into Canvas. You can turn in a .docx or .pdf file. Show any EDA (graphical or non-graphical) you have used to come to this conclusion.


# Problem 1: Load data

# Set your working directory to the folder where you downloaded the data.
setwd("/Users/akshatshah/Desktop/upenn/crim250/LabJournal")

# Read the data
dat <- read.csv(file = 'dat.nsduh.small.1.csv')

# What are the dimensions of the dataset? 

dim(dat)

# Answer: There are 171 rows and 7 columns in this dataset.

names(dat)

## Problem 2: Variables

# Describe the variables in the dataset.

# The variables are mjage, ciage, iralcage, age2, sexatract, speakengl, and irsex.
# They each tell us different things. Mjage tells how old someone was when
# they first starting using marijuana. Ciage tells how old someone was when
# they first starting smoking cigs every day. iralcage tells how old someone
# was when they tried alcohol. age2 tells us hpw old the person currently is.
# However, this gives us a range because a person could have changes their choice
# based on previous responses and the questions they say. Irsex tells us
# their gender. sexatract tells us describes their attraction/sexuality.
# speakengl tells how well the individual speaks english. 

# What is this dataset about? Who collected the data, what kind of sample is it, and what was the purpose of generating the data?

# This dataset is a survey about national drug use and health. The data is sponsored by
# the United States Health and Human Services. The sample is a scientific random sample
# of household addresses. This data gives us a state and nationwide statistics on
# drug use. This information is used to help with prevention, trend studies, and inform public
# health policy. 

## Problem 3: Age and gender

# What is the age distribution of the sample like? Make sure you read the codebook to know what the variable values mean.

# The age distribution is more towards the 13-17 year old range. However, when we look at this data
# we should understand that it can be more of a range since participants could change their answers
# based on the decisions on they made or what they see fit.

# Do you think this age distribution representative of the US population? Why or why  not?

# I believe this data not a good representative of the US population.
# We are looking at a younger population that makes up around 35% of the age distribution.
# So we are leaving out a large majority that can help us see more trends.

# Is the sample balanced in terms of gender? If not, are there more females or males?

# I believe this data is pretty balanced. There is a pretty even distribution but 
# for some of the ages we can see that there is a clear majority like for 17.

# Use this code to draw a stacked bar plot to view the relationship between sex and age. What can you conclude from this plot?
tab.agesex <- table(dat$irsex, dat$age2)
barplot(tab.agesex,
        main = "Stacked barchart",
        xlab = "Age category", ylab = "Frequency",
        legend.text = rownames(tab.agesex),
        beside = FALSE) # Stacked bars (default)



## Problem 4: Substance use

# For which of the three substances included in the dataset (marijuana, alcohol, and cigarettes) do individuals tend to use the substance earlier?


summary(dat)


#Looking at the summary of the data, we can see on average what is used earlier on.
#Alcohol seems to be used the earliest at an average of 14.95. Then it is mjage at 15.99
#Finally, it is cigage at 17.65.


## Problem 5: Sexual attraction

# What does the distribution of sexual attraction look like? Is this what you expected?

table(dat$sexatract)

# We see that the largest amount of people (136) chose 1. Yes, this is what I 
# expected since it is the norm to be heterosexual.

# What is the distribution of sexual attraction by gender? 

table(dat$sexatract, dat$irsex)

#By gender, the distribution is the same in that the majority of both gender
#are attracted to the opposite gender. However, more females chose other options.




## Problem 6: English speaking

# What does the distribution of English speaking look like in the sample? Is this what you might expect for a random sample of the US population?

table(dat$speakengl)

#The majority of people chose that they speak english very well. And there were
#very few who chose well and not well (10 total). This is probably what I would 
#expect since it is the dominant language.


# Are there more English speaker females or males?

table(dat$speakengl, dat$irsex)

# There are more English speakers who are male than female.



# Getting-and-Cleaning-Data-Course-Project

Project for the Coursera course entitled "Getting and Cleaning Data" using Samsung Galaxy S accelerometer and gyroscope data.

###Background
The script run_analysis.R has been written to work with the *Human Activity Recognition Using Smartphones Dataset* (hereafter referred to as the "accelerometer dataset").  This data set contains Samsung Galaxy S accelerometer and gyroscope readings obtained when worn by human participants during various activities.  The data was collected and compiled by researchers Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto; their related publication is cited below [1]. More information about the dataset can be found at <a>http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.</a>

###run.analysis.R
The general purpose of the run_analysis.R script is to download the accelerometer dataset, tidy up the contained information, and create a data frame containing specific averages.

This purpose can be broken down into the following specific steps:

1. Download and unzip the data set.
2. Record the time downloaded as a variable in R for future reference.
2. Read the data-containing files within the unzipped dataset into R
3. Combine the training data and the testing data together into one large data frame.
4. Replace the coded numbers for the activities performed with text describing the activities performed (e.g., instead of "1", replace with "walking").
5. Replace or modify the existing measurement variable names to make them more readable and in-line with conventions for variable names in R (i.e., no mathematical symbols or parentheses).  Explanations regarding the changes can be found below
6. Generate a new data frame containing the average measurements for each of the 30 subjects for each of 6 activity types.

##### Rationale for modifications to variable names

[still working on modifying the variable names]



##### Notes on specific coding decisions

Only functions from the base and utils packages in R were used to create the script.  Thus, anyone using this script should not have to download any additional packages or load packages into R.  While some parts of the code may have been made more efficient or condensed by packages such as dplyr, the convenience to a given user of using more typical functions outweighed such benefits.










---------------
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
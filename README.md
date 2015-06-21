# Getting-and-Cleaning-Data Course Project
================

Project for the Coursera course entitled "Getting and Cleaning Data" using Samsung Galaxy S accelerometer and gyroscope data.

### Important note

>Work on this project commenced during the May 2015 session of the Coursera course "Getting and Cleaning Data."  Due to life circumstances, I unenrolled in that session of the course, and enrolled in the June 2015 session of the course.  Thus, commits have been made to this repository prior to the start of the June session as a result of my prior work, and is not taken from the work of any other person.



###Background
The script [run_analysis.R](https://github.com/GHarmata/Getting-and-Cleaning-Data-Course-Project/blob/master/run_analysis.R) has been written to work with the *Human Activity Recognition Using Smartphones Dataset* (hereafter referred to as the "UCI HAR dataset").  This data set contains Samsung Galaxy S accelerometer and gyroscope readings obtained when worn by human participants during various activities.  The data was collected and compiled by researchers Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto; their related publication is cited below [1].[^1] More information about the dataset can be found at <a>http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.</a>


###run_analysis.R
The general purpose of the run_analysis.R script is to download the UCI HAR dataset, tidy up the contained information, and create a data frame containing specific averages.

This purpose can be broken down into the following specific steps:

1. Download and unzip the data set.
2. Record the time downloaded as a variable in R for future reference.
2. Read the data-containing files within the unzipped dataset into R
3. Combine the training data and the testing data together into one large data frame, only keeping variables containing means and standard deviations.  
4. Replace the coded numbers for the activities performed with text describing the activities performed (e.g., instead of "1", replace with "walking").
5. Replace or modify the existing measurement variable names to make them more readable and in-line with conventions for variable names in R (i.e., no mathematical symbols or parentheses).  Explanations regarding the changes can be found below.
6. Generate a new data frame containing the average measurements for each of the 30 subjects for each of 6 activity types.


##### Instructions for use

Currently, run_analysis.R is in the form of a function with a single optional argument ("download").  To use, run the function in R, then type run_analysis() in the console.  The preferred options for the download argument are "yes" and "no".  The only reason to use the download argument would be in an instance in which the user had already downloaded the dataset to the working directory of R.

Please keep in mind that the resulting data frame contains the means of all the variables (thus containing many means of means) across all subject number-activity type combinations. The resulting data frame will print to the console, and will also be stored as the data frame run_analysis_res.


##### Codebook and additional variable information
The codebook for the variables described by the output of run_analysis.R is also available in this git repository [(here)](https://github.com/GHarmata/Getting-and-Cleaning-Data-Course-Project/blob/master/Codebook.md)  .  However, the codebook does not elaborate on how measures such as "Jerk" were obtained.  

According to the documentation for the UCI HAR dataset [1], especially the README.txt file, the following steps were undertaken to obtain the data that will be output by run_analysis.R:

- Both the raw accelerometer and gyroscope data from the smartphones were recorded at 50 Hz, then filtered for noise and sampled in overlapping windows.  

- Both types of signals were then each separated into 2 comprising elements: the gravity-acceleration signal and the body-acceleration signal.  The gravity-caused signal was differentiated from the body-caused signal using a Butterworth low-pass filter with a cutoff of 0.3 Hz, since signals due to gravity were assumed to be below that threshold.

- Jerk signals were calculated by combining the data from all three directions (X, Y, and Z) for body acceleration (from the accelerometer) and angular velocity (from the gyroscope).  

- The magnitudes of the combined, three-direction (X, Y, and Z) signals and the obtained Jerk signals were found using the "Euclidean norm." (more information on the Euclidean norm can be found [here](https://en.wikipedia.org/?title=Norm_%28mathematics%29)).

- The angles between the vectors of various signal combination pairs were calculated.  Presumably, this was done to examine the potential interactions between signal measurements; however, the rationale is not explained in the original documentation. 

- The arguments for the angle calculations were found by taking signal averages from sample windows, in some ways similar to a [moving average](http://www.itl.nist.gov/div898/handbook/pmc/section4/pmc42.htm).  

- Each variable, referred to as a "feature," was "normalized and bounded within [-1,1]" [1]. This was presumably done for easier comparison and more intuitive statistical analyses.


##### Rationale for modifications to variable names

All of the variable names were derived from the original dataset.  However, the following formatting changes were implemented:

- All parentheses and commas were removed, as they are not syntactically valid and could be problematic if a person wished to subset the resulting data frame using the $ notation (see the R documentation link below [^2]; also see discussions ).
- Periods (`.`) were used to separate abbreviations meant to be read together, while underscore symbols (`_`) were used to separate parts of the variable name meant to be read separately.  For example, t_body.Accel_stdev.X corresponds to the time domain signal (t) for body acceleration (body.Accel) with the measure for the standard deviation of the X axis (stdev.X).
- Abbreviations for instrument names (accelerometer and gyroscope) were kept capitalized, as were abbreviations for calculated values of jerk and magnitude.  
- The abbreviation for accelerometer was changed from "Acc" to "Accel" to make the meaning of the abbreviation clearer.
- The accelerometer and gyroscope signal divisions into body and gravity signals were not capitalized, in order to set them apart from the instrument type and the calculated values of jerk and magnitude.  
- For the variables names in the form of angle(...), the initial parenthesis  replaced with a double underscore to indicate that the following text was intended to be grouped together in parentheses.  Additionally, the comma separating the arguments in angle(...) was replaced by a single underscore to 
indicate the intended separation of parts of the variable name.
- Several variables contain the phrase "bodybody", which does not parse into a meaningful distinction from variables containing one instance of the word "body"--the variable reflects either the body signals or gravity signals from a single subject, and a single subject would not have multiple body signals.   It is highly likely that these cases were typos; fellow Coursera users from the forums believe that this as well.  Thus, all instances of "bodybody" have been changed to "body".
- The variable formerly named "angle(tBodyAccMean,gravity)" was interpreted as containing a typo in the second argument, which now reads "gravMean". The features_info.txt file from the original data set explained that the vectors used in the angle( ) variables included "gravityMean", "tBodyAccMean", "tBodyAccJerkMean", "tBodyGyroMean", and "tBodyGyroJerkMean".  Since all other angle( ) variables contained one of these variables or an axial direction (X, Y, or Z) as arguments, it was assumed that the original variable should have been titled "angle(tBodyAccMean,gravity**mean**)".



##### Notes on specific coding decisions

- Only functions from the base and utils packages in R were used to create the script.  Thus, anyone using this script should not have to download any additional packages or load packages into R.  While some parts of the code may have been made more efficient or condensed by packages such as dplyr, I believed the convenience to a given user of using more typical functions might outweigh such benefits.

- The script is in the form of a function, instead of a stand-alone script.  This was done in order to allow the user to have some flexibility in whether or not to work with a preexisting version of the data set, using syntax for input with which I was familiar.

- The "download" argument was included in the script to give the user the option to not re-download the entire dataset zip file. If the user does not include the "download" argument when calling the function, the dataset is automatically downloaded, overwriting the previous zip file (if present). Regardless of the value of the "download" argument, the zip file will automatically be downloaded and unzipped if R does not detect an existing copy of the unzipped dataset directory in the user's working directory.  

- If the user does decide to re-download the entire dataset zip file while using run_analysis.R, the script will also save the time and date of that download in the R workspace. This feature was added in order to improve reproducibility, in the event that changes were made to the dataset files at the source since the last time the user accessed them.


##### Future goals for the script

Currently, the complete execution of the script (without the downloading of the dataset) takes just under 25 seconds on my system.  Improving efficiency would be a desired next step in the development of run_analysis.R.  It is possible that this would require additional packages such as dplyr or data.table; I am currently working on a version of the script that uses functions from both of the aforementioned packages.



##### Helpful resources and acknowledgements

I would like to thank the many Coursera users posting helpful questions, comments, and answers on the discussion forums. 

The following links were also helpful in the development of this script and/or the codebook:

- <a> http://stackoverflow.com/questions/10904124/global-and-local-variables-in-r </a> 
- <a> https://stat.ethz.ch/pipermail/r-help/2011-September/288780.html </a>
- <a> http://stackoverflow.com/questions/8942670/split-dataframe-using-two-columns-of-data-and-apply-common-transformation-on-lis </a>
- <a> https://ramnathv.github.io/pycon2014-r/explore/sac.html</a>
- <a> http://stackoverflow.com/questions/12328056/how-do-i-delete-rows-in-a-data-frame </a>
- <a>http://daringfireball.net/projects/markdown/basics</a>
- <a>http://stackoverflow.com/questions/6046263/how-to-indent-a-few-lines-in-markdown-markup </a>
- <a>https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41</a>
- <a>http://stackoverflow.com/questions/7653483/github-relative-link-in-markdown-file</a>
- codebook inspiration:
	- American Community Survey 2006 Data Dictionary (<a>http://www.census.gov/acs/www/Downloads/data_documentation/pums/DataDict/PUMSDataDict06.pdf</a>) 
	
This list of links is not comprehensive; there are undoubtedly other links that were helpful to me in understanding how to use R to complete this assignment. 

Additionally, the markdown editing software [Mou](http://25.io/mou/) and its help files, RStudio, R version 3.2.0 ("Full of Ingredients"), Microsoft Excel (for preliminary codebook organization), and Apple's TextEdit were used in the creation of this project.


---------------
[^1]: [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

[^2]: [2] <a> http://cran.r-project.org/doc/FAQ/R-FAQ.html#What-are-valid-names_003f </a> <br> *Note: A [helpful Stackoverflow discussion](http://stackoverflow.com/questions/9195718/variable-name-restrictions-in-r</a>) directed me to this link.*      
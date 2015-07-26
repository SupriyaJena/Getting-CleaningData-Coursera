# Getting and Cleaning Data course project read me  

This README contains instructions on how the program works and how to run the program created part of the assignment of the Getting and Cleaning Data course offered by the Johns Hopkins School for Public Health. The programming assignment was created and executed using the R programming language. 

### Repository Contents  
        - R Script
        
        - CodeBook.md - Describes the variables used in the assignment

        - README.md - Describes how the script works. 
        
        - Data Sets
        
                * Raw Dataset - Contains the combined data from both the training and testing datasets. 
                
                * Tidy Dataset - Contains the final tidy data with the average of each variable for each 
                                 activity and each subject.
        

### How the script works

The script is designed to perform following actions

        - Reads the training and testing data sets
        - Merge both the training and testing data sets to create one data set 
        - Processes the merged data set to extract the relevant variables, adds descriptive activity names, etc.
        - Writes the merged data set to rawdata.csv
        - Generates the tidy data set
        - Writes the tidy data set to tidydata.csv and also to tidydata.txt
        
Prior to executing the script you have to download the data from the course website that represents data collected from the accelerometers from the Samsung Galaxy S smartphone.

        Data for the project: 
        https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### How to run the script

Once the data is downloaded to the computer, the working directory should be set to the directory containing the data folder "UCI HAR Dataset". Once the working directory is set, the user simply has to run the run_analysis.R script file. In RStudio or in the R environment that is included in the R distribution, you simply have to source the file:

source("run_analysis.R")
NOTE: This will take several seconds to complete - explanation to follow.

Once the execution of run_analysis.R script is completed, the final outputs data sets should be found in the working directory.
---
title: "Codebook"
author: "Tommas Toson"
date: "30/11/2021"
output: 
  html_document:
    keep_md: yes
---
<br>

### Tidying the 'Human Activity Recognition Dataset _ Version 1.0'
This project aims to process the disparate elements of the original dataset into a single tidy dataset.

<br>

#### Original dataset
Human Activity Recognition Dataset _ Version 1.0

The original dataset was downloaded from the following link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


The original dataset contains a file called features_info.txt which describes how the raw data was collected.

The licence to use the original dataset is included in 'readme.md'.

<br>

#### Characteristics of the data
Please note that the instructions for recreating/loading the tidy dataset are in the 'readme.md' file.

<br>

For each record of the tidy dataset:

* Subject ID and Activity are grouped variables
* All remaining measurements are averaged (mean) against the grouped variables

<br>

#### Cleaning and transforming the data
The steps taken to transform the data in 'run_analysis.R':

* [Step 1 of Coursera assignment] Train and Test data are read in and merged into a single dataframe (df). Meta data of activity labels and variable names from the original dataset are also read in. 
* [Step 4 of Coursera assignment] The first two variables in the dataframe are named 'subject id' and 'activity'. These respectively describe the unique ID of the subject performing the activity and the activity being performed.
* [Step 4 of Coursera assignment] The remaining variable names are preserved from the original dataset as recorded in the features.txt file in the original dataset. Further info on these can be found in 'codebook.md' or in the original dataset in 'features_info.txt'
* [Step 2 of Coursera assignment] A text expression is now used to extract the variables which were calulated as mean or standard deviation in the orginal dataset. These are denoted by features names which have either '-mean()' or '-std()' in the name.
* [Step 3 of Coursera assignment] A left join to the activity labels table (actLabels) is now performed. The activity integer id values are then replaced by the corresponding activity description values.
* [Step 5 of Coursera assignment] A second tidy dataset is created (tdf) from the first which averages (mean) each variable for each activity and each subject.
* [Step 4 of Coursera assignment] Updates the variable names of the tdf with the prefix 'mean of' to indicate that they have been averaged.

<br>

### Variables

<br>

#### Notes:

Note all of the measurement variables in the tidy dataset are averaged (mean)

All values for all measurement variables normalised in original dataset in range -1:1

Each measurement has three readings, one for each axis X,Y and Z

't' prefix denotes time

'f' prefix denotes frequency domain signals

<br>

#### Grouped Variables:


* subjectid
    + between 1 and 30. The ID of the trial participant

* activity
    -	the activity being performed during data capture
    
<br>

#### Measurement Variables

<br>

##### Time based (t) :
* mean of tBodyAcc-mean()-X
* mean of tBodyAcc-mean()-Y
* mean of tBodyAcc-mean()-Z
	- body acceleration signals (mean)
	
<br>

* mean of tBodyAcc-std()-X
* mean of tBodyAcc-std()-Y
* mean of tBodyAcc-std()-Z
  - body acceleration signals (standard deviation)
  
<br>

* mean of tGravityAcc-mean()-X
* mean of tGravityAcc-mean()-Y
* mean of tGravityAcc-mean()-Z
	- gravity acceleration signals (mean)
	
<br>

* mean of tGravityAcc-std()-X
* mean of tGravityAcc-std()-Y
* mean of tGravityAcc-std()-Z
	- gravity acceleration signals (standard deviation)
	
<br>

* mean of tBodyAccJerk-mean()-X
* mean of tBodyAccJerk-mean()-Y
* mean of tBodyAccJerk-mean()-Z
	- body linear acceleration derived jerk signals (mean)
	
<br>

* mean of tBodyAccJerk-std()-X
* mean of tBodyAccJerk-std()-Y
* mean of tBodyAccJerk-std()-Z
	- body linear acceleration derived jerk signals (standard deviation)
	
<br>

* mean of tBodyGyro-mean()-X
* mean of tBodyGyro-mean()-Y
* mean of tBodyGyro-mean()-Z
	- body gyroscope signals (mean)
	
<br>

* mean of tBodyGyro-std()-X
* mean of tBodyGyro-std()-Y
* mean of tBodyGyro-std()-Z
	- body gyroscope signals (standard deviation)
	
<br>

* mean of tBodyGyroJerk-mean()-X
* mean of tBodyGyroJerk-mean()-Y
* mean of tBodyGyroJerk-mean()-Z
	- angular velocity derived jerk signals (mean)
	
<br>

* mean of tBodyGyroJerk-std()-X
* mean of tBodyGyroJerk-std()-Y
* mean of tBodyGyroJerk-std()-Z
	- angular velocity derived jerk signals (standard deviation)
	
<br>

* mean of tBodyAccMag-mean()
	- magnitude of body acceleration signals (mean)
* mean of tBodyAccMag-std()
	- magnitude of body acceleration signals (standard deviation)

<br>

* mean of tGravityAccMag-mean()
	- magnitude of gravity acceleration signals (mean)
* mean of tGravityAccMag-std()
	- magnitude of gravity acceleration signals (standard deviation)

<br>

* mean of tBodyAccJerkMag-mean()
	- magnitude of body linear acceleration derived jerk signals (mean)
* mean of tBodyAccJerkMag-std()
	- magnitude of body linear acceleration derived jerk signals (standard deviation)

<br>

* mean of tBodyGyroMag-mean()
	- magnitude of body gyroscope signals (mean)
* mean of tBodyGyroMag-std()
	- magnitude of body gyroscope signals (standard deviation)

<br>

* mean of tBodyGyroJerkMag-mean()
	- magnitude of angular velocity derived jerk signals (mean)
* mean of tBodyGyroJerkMag-std()
	- magnitude of angular velocity derived jerk signals (standard deviation)

<br>

##### Frequency domain signals (f)

<br>

* mean of fBodyAcc-mean()-X
* mean of fBodyAcc-mean()-Y
* mean of fBodyAcc-mean()-Z
	- body acceleration signals (mean)

<br>

* mean of fBodyAcc-std()-X
* mean of fBodyAcc-std()-Y
* mean of fBodyAcc-std()-Z
	- body acceleration signals (standard deviation)

<br>

* mean of fBodyAccJerk-mean()-X
* mean of fBodyAccJerk-mean()-Y
* mean of fBodyAccJerk-mean()-Z
	- body linear acceleration derived jerk signals (mean)	

<br>

* mean of fBodyAccJerk-std()-X
* mean of fBodyAccJerk-std()-Y
* mean of fBodyAccJerk-std()-Z
	- body linear acceleration derived jerk signals (standard deviation)

<br>

* mean of fBodyGyro-mean()-X
* mean of fBodyGyro-mean()-Y
* mean of fBodyGyro-mean()-Z
	- body gyroscope signals (mean)

<br>

* mean of fBodyGyro-std()-X
* mean of fBodyGyro-std()-Y
* mean of fBodyGyro-std()-Z
	- body gyroscope signals (standard deviation)

<br>

* mean of fBodyAccMag-mean()
	- magnitude of body acceleration signals (mean)
* mean of fBodyAccMag-std()
	- magnitude of body acceleration signals (standard deviation)

<br>

* mean of fBodyBodyAccJerkMag-mean()
	- magnitude of body linear acceleration derived jerk signals (mean)
* mean of fBodyBodyAccJerkMag-std()
	- magnitude of body linear acceleration derived jerk signals (standard deviation)

<br>

* mean of fBodyBodyGyroMag-mean()
	- magnitude of body gyroscope signals (mean)
* mean of fBodyBodyGyroMag-std()
	- magnitude of body gyroscope signals (standard deviation)

<br>

* mean of fBodyBodyGyroJerkMag-mean()
	- magnitude of angular velocity derived jerk signals (mean)
* mean of fBodyBodyGyroJerkMag-std()
	- magnitude of angular velocity derived jerk signals (standard deviation)



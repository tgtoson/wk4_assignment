---
title: "Read Me"
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

#### Files included:

readmme.md (general info, including a justification as to why the tidy dataset is tidy)

codebook.md (specific steps in transforming data, variable names and descriptions)

run_analysis.R (creates the tidy dataset)

tidy.txt (the tidy dataset output)

A description of the steps taken to process the data can be found in the 'codebook.md' file.

<br>

### To create the tidy dataset

*   Ensure you have a working directory set which contains the unzipped root folder ('UCI HAR Dataset') of the original dataset
*   Run the 'run_analysis.R' file. This will:
      + load in the raw data from 'UCI HAR Dataset'
      + load in the required metadata from 'UCI HAR Dataset'
      + perform the transformations that create the tidy dataset
      + create a txt output of the dataset in the working directory called 'tidy.txt'

If you'd rather not run the 'run_analysis.R' file and want to view the tidy data set then the line `read.table("tidy.txt", header = T, check.names = F)` will read the tidy data set into R studio although you'll need to ensure your working directory contains the 'tidy.txt' file.

<br>

#### How is the data tidy?

The tidy dataset can be considered tidy because it:

* Is held in a single table
* Keeps measurements in separate columns
* Clearly labels measurements (columns)
* Provides script to recreate the table from the raw data set
* Includes a read me giving general information of the project
* Includes a code book which describes the methodology of transforming the data and gives descriptions of the variable names

<br>

A quick note on the 'tidiness' of my measurement (column) names. Except for adding the prefix 'mean of', which indicates the calcs I have performed on the data,
I have preserved the measurement names from the original dataset and have not rewritten them. There are two reasons for this.

Firstly, I do not fully understand what each measurement name means. The descriptions in the original dataset are fairly sparse and as such I don't feel I know enough to be able to add anything meaningful to the measurement names. It also runs the risk that I would rename the measurements inaccurately which would affect the integrity of the tidy dataset. 

Secondly, the 
names are already quite long and in trying to  make them more meaningful they would probably end up even longer which would not be tidy. Instead the descriptions of the 
measurement names can be found in 'codebook.md' and the 'features_info.txt' file in the original dataset.

<br>

#### Original Dataset - 'Human Activity Recognition Dataset _ Version 1.0'
The original dataset was downloaded from the following link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip in November 2021

<br>

#### Original Dataset - Licence

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.



# Getting and Cleaning Data Course Project


Final project for the *Getting and Cleaning Data* Project on Coursera (by Johns Hopkins University)
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.


### 1.Repository description

This repositori consist on following files:

- *README.md:* The document that you're reading  
- *run_analysis.R:* the Script that proceses the data
- *Codebook.md:* The document that explains the variables
- tidy_UCI_HAR.txt


### 2.Original data

The source of the used data set "Human Activity Recognition Using Smartphones" for this proyect is from an Experiment carried on the Smartlab - Non Linear Complex Systems Laboratory at the Università degli Studi di Genova, Italy.
The data can be downloaded at the [following website](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The data is contained on the following files:

- `features.txt`: List of all 561 features.
- `activity_labels.txt`: Links the class labels with their activity name.

The raw data is splitted between train and test data:

- `train/X_train.txt`: Training set, 7352 observations of the 561 features.
- `train/y_train.txt`: Training labels for the 7352 observations.
- `train/subject_train.txt`: Each row identifies the subject who performed the activity for each window sample for the 7352 observations. Its range is from 1 to 30.
- `test/X_test.txt`: Test set, 2947 observations of the 561 features.
- `test/y_test.txt`: Test , 2947 observations of the 561 features..
- `test/subject_test.txt`: Each row identifies the subject who performed the activity for each window sample for the 2947 observations. Its range is from 1 to 30. 

### 3. Data processing

Here is described how the original data from the *Smartlab - Non Linear Complex Systems Laboratory* is processed to obtain the final tidy and cleaned dataset using the script `run_analysis.R`. Is it required to run this script the library `dplyr`


#### **I.Download unzip and read the required data**

Here is the data downloaded from the original source, stored at the computer and then all the neccesary information is readed as a table. In total 8 dataframes are created.


#### **II.Combine the test and train datasets**

Here using `bind_rows` are merged all the datasets separated by **train** and **test**. The product of this operation are tree data frames with 10299 observations each:

- `subj` with the subjects information
- `actv` with the activities information
- `data` with all the observations features

#### **III.Remove the not interesting variables except mean and std**

For this project only the 81 features related with *mean* and the *standard deviation*  are of our interest. Therefore here are removed the rest of features among the 561 variables without the terms `mean` or `std`. The function `grepl`is useful here. The results of this step are:

- `feat_vld` the vector with the mean and std features names
- `data_vld` the data frame with only the mean and std features

#### **IV.Assign descriptive labels for the features**

In order to tidy the data, it is necessary to convert the original names into descriptive ones. The `feat_vld` vector that contains the variable names is manipulated using the `gsub` function. Here is the followed criteria

- `f` to `Freq`
- `t` to `Time`
- `Acc` to `Acceleration`
- `-mean()` to `Mean`
- `-std()` to `Std`   
- `-meanFreq()` to `MeanFreq`
- `BodyBody`to `Body` (that probably was a typographic error at the original data)

#### **V.Label properly all the data**

On this step all the data frames are labeled using the `names` function with descriptives names:

- `subj` with the "Subjects" name
- `actv`with the "Activities" name
- `data_vld` is labeled according the `feat_vld` vector, that was manipulated previoulsy

#### **VI.Asign names to the observed activities**

The Activities listed on the `actv` vector are represented by an index. From the `actilabl` data frame, these indexes are mached in order to assign descriptive names at the final tidy data set


#### **VII.Merge all the variables**

The separate processed variables (Subject, Activities and all the features) are merged using the `bind_col` function

#### **VIII.Summarize data mean value grouping by subject and activity**

The tidy data consist on the mean values of each observation per subject and activity. Here firs the data is Grouped by the variable `Subject` then by `Activity` using the `group_by` function. Finally is calculated the mean value of all the grouped variables using the `summarise_all`

#### **IX.Export the tidy data**

Finally the ressulting tidy data is exported as the `tidy_UCI_HAR.txt` file, included on this Repository





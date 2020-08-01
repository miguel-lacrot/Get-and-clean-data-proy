# Get-and-clean-data-proy
Proyect for the Getting and **Cleaning** Data Course Project on Coursera (by Johns Hopkins University)
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.

### 1.Repository description

This repositori consist on following files:

- README.md
- run_analysis.R
- Codebook.md
- ***Tydydata.txt***

### 2.Original data

The source of the used data set "Human Activity Recognition Using Smartphones" for this proyect is from an Experiment carried on the Smartlab - Non Linear Complex Systems Laboratory at the Università degli Studi di Genova, Italy.
The data can be downloaded at the following website 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data is contained on the following files:

- 'features.txt': List of all 561 features.
- 'activity_labels.txt': Links the class labels with their activity name.

The raw data is splitted between train and test data:

- 'train/X_train.txt': Training set, 7352 observations of the 561 features.
- 'train/y_train.txt': Training labels for the 7352 observations.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample for the 7352 observations. Its range is from 1 to 30.
- 'test/X_test.txt': Test set, 2947 observations of the 561 features.
- 'test/y_test.txt': Test , 2947 observations of the 561 features..
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample for the 2947 observations. Its range is from 1 to 30. 

### 3. Data processing

Here is described how the original data from the *Smartlab - Non Linear Complex Systems Laboratory* is processed to obtain the final tidy and cleaned dataset.

#### I.Download unzip and read the required data

Here is the data downloaded from the original source, stored at the computer and then all the neccesary information is readed as a table. In total 8 dataframes are created

#### II.Combine the test and train datasets

#### III.Remove the not interesting variables except mean and std

#### IV.Assign descriptive labels for the features

#### V.Label properly all the data

#### VI.Asign descriptive names to the observed activities



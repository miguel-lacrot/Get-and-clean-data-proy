#Codebook of the Getting and Cleaning Data project

## 1. Original Data

The data source can be found at the [following website](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
The data was created by:

>Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto
Smartlab - Non Linear Complex Systems Laboratory 
DITEN - Università degli Studi di Genova` 

You can find all the information about the dataset at the `README.txt`file

## 2. Data transformation

In order to tidy and clean the data, the following process is performed:

1.Download unzip and read the required data  
2.Combine the test and train datasets  
3.Remove the not interesting variables except mean and std  
4.Assign descriptive labels for the features  
5.Label the variables using descriptive names  
6.Asign descriptive names to the observed activities  
7.Merge all the variables on a single Data Frame: Subjects + Activities + rest of the data  
8.Sumarize the data grouped by subject and activity resulting a 180 obs DF  
9.Export on a .txt file the ressulting data frame  

## 3. Final dataset

The final tidy dataset consist on a table with 180 observations of 81 variables. The variables are here described in order.

1.*Subject* are the Subject indexes. From 1 to 30  
2.*Activity* are the Activities Names. Six possible values:

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

The rest of the 79 variables are all the Mean an Standard Deviation features from the original dataset.


1           TimeBodyAccelerationMean-X  
2           TimeBodyAccelerationMean-Y  
3           TimeBodyAccelerationMean-Z  
4            TimeBodyAccelerationStd-X  
5            TimeBodyAccelerationStd-Y  
6            TimeBodyAccelerationStd-Z  
7        TimeGravityAccelerationMean-X  
8        TimeGravityAccelerationMean-Y  
9        TimeGravityAccelerationMean-Z  
10        TimeGravityAccelerationStd-X  
11        TimeGravityAccelerationStd-Y  
12        TimeGravityAccelerationStd-Z  
13      TimeBodyAccelerationJerkMean-X  
14      TimeBodyAccelerationJerkMean-Y  
15      TimeBodyAccelerationJerkMean-Z  
16       TimeBodyAccelerationJerkStd-X  
17       TimeBodyAccelerationJerkStd-Y  
18       TimeBodyAccelerationJerkStd-Z  
19                  TimeBodyGyroMean-X  
20                  TimeBodyGyroMean-Y  
21                  TimeBodyGyroMean-Z  
22                   TimeBodyGyroStd-X  
23                   TimeBodyGyroStd-Y  
24                   TimeBodyGyroStd-Z  
25              TimeBodyGyroJerkMean-X   
26              TimeBodyGyroJerkMean-Y  
27              TimeBodyGyroJerkMean-Z  
28               TimeBodyGyroJerkStd-X  
29               TimeBodyGyroJerkStd-Y  
30               TimeBodyGyroJerkStd-Z  
31         TimeBodyAccelerationMagMean  
32          TimeBodyAccelerationMagStd  
33      TimeGravityAccelerationMagMean  
34       TimeGravityAccelerationMagStd   
35     TimeBodyAccelerationJerkMagMean   
36      TimeBodyAccelerationJerkMagStd  
37                 TimeBodyGyroMagMean   
38                  TimeBodyGyroMagStd   
39             TimeBodyGyroJerkMagMean  
40              TimeBodyGyroJerkMagStd  
41          FreqBodyAccelerationMean-X  
42          FreqBodyAccelerationMean-Y  
43          FreqBodyAccelerationMean-Z  
44           FreqBodyAccelerationStd-X  
45           FreqBodyAccelerationStd-Y  
46           FreqBodyAccelerationStd-Z  
47      FreqBodyAccelerationMeanFreq-X  
48      FreqBodyAccelerationMeanFreq-Y  
49      FreqBodyAccelerationMeanFreq-Z  
50      FreqBodyAccelerationJerkMean-X  
51      FreqBodyAccelerationJerkMean-Y  
52      FreqBodyAccelerationJerkMean-Z  
53       FreqBodyAccelerationJerkStd-X  
54       FreqBodyAccelerationJerkStd-Y   
55       FreqBodyAccelerationJerkStd-Z  
56  FreqBodyAccelerationJerkMeanFreq-X  
57  FreqBodyAccelerationJerkMeanFreq-Y  
58  FreqBodyAccelerationJerkMeanFreq-Z  
59                  FreqBodyGyroMean-X  
60                  FreqBodyGyroMean-Y  
61                  FreqBodyGyroMean-Z  
62                   FreqBodyGyroStd-X  
63                   FreqBodyGyroStd-Y  
64                   FreqBodyGyroStd-Z  
65              FreqBodyGyroMeanFreq-X  
66              FreqBodyGyroMeanFreq-Y  
67              FreqBodyGyroMeanFreq-Z  
68         FreqBodyAccelerationMagMean  
69          FreqBodyAccelerationMagStd  
70     FreqBodyAccelerationMagMeanFreq  
71     FreqBodyAccelerationJerkMagMean  
72      FreqBodyAccelerationJerkMagStd  
73 FreqBodyAccelerationJerkMagMeanFreq  
74                 FreqBodyGyroMagMean  
75                  FreqBodyGyroMagStd  
76             FreqBodyGyroMagMeanFreq  
77             FreqBodyGyroJerkMagMean  
78              FreqBodyGyroJerkMagStd  
79         FreqBodyGyroJerkMagMeanFreq  
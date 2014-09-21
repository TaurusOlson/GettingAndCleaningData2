# Code book for the Human Activity Recognition Using Smartphones Dataset


## The raw data

- features_info.txt: Shows information about the variables used on the feature vector.
- features.txt: List of all features.
- activity_labels.txt: Links the class labels with their activity name.
- train/X_train.txt: Training set.
- train/y_train.txt: Training labels.
- test/X_test.txt: Test set.
- test/y_test.txt: Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- train/subject_train.txt: Each row identifies the subject who performed the
  activity for each window sample. Its range is from 1 to 30. 

- train/Inertial Signals/total_acc_x_train.txt: The acceleration signal from
  the smartphone accelerometer X axis in standard gravity units 'g'. Every row
  shows a 128 element vector. The same description applies for the
  'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z
  axis. 

- train/Inertial Signals/body_acc_x_train.txt: The body acceleration signal
  obtained by subtracting the gravity from the total acceleration. 

- train/Inertial Signals/body_gyro_x_train.txt: The angular velocity vector
  measured by the gyroscope for each window sample. The units are
  radians/second. 


## Variables

The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals
(prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then
they were filtered using a median filter and a 3rd order low pass Butterworth
filter with a corner frequency of 20 Hz to remove noise. Similarly, the
acceleration signal was then separated into body and gravity acceleration
signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth
filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in
time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the
magnitude of these three-dimensional signals were calculated using the
Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag,
tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals
producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag,
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain
signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


There are 81 variables in the dataset. The first 2 are categorical variables
The 79 following are mean and standard values of the features recorded by the
sensors.

1.  Subject
    An integer between 1 and 30 identifying a given subject

2.  Activity
    An integer between 1 and 6 identifying an activity
    1: WALKING
    2: WALKING_UPSTAIRS
    3: WALKING_DOWNSTAIRS
    4: SITTING
    5: STANDING
    6: LAYING

3.  tBodyAcc-mean()-X
4.  tBodyAcc-mean()-Y
5.  tBodyAcc-mean()-Z
6.  tBodyAcc-std()-X
7.  tBodyAcc-std()-Y
8.  tBodyAcc-std()-Z
9.  tGravityAcc-mean()-X
10. tGravityAcc-mean()-Y
11. tGravityAcc-mean()-Z
12. tGravityAcc-std()-X
13. tGravityAcc-std()-Y
14. tGravityAcc-std()-Z
15. tBodyAccJerk-mean()-X
16. tBodyAccJerk-mean()-Y
17. tBodyAccJerk-mean()-Z
18. tBodyAccJerk-std()-X
19. tBodyAccJerk-std()-Y
20. tBodyAccJerk-std()-Z
21. tBodyGyro-mean()-X
22. tBodyGyro-mean()-Y
23. tBodyGyro-mean()-Z
24. tBodyGyro-std()-X
25. tBodyGyro-std()-Y
26. tBodyGyro-std()-Z
27. tBodyGyroJerk-mean()-X
28. tBodyGyroJerk-mean()-Y
29. tBodyGyroJerk-mean()-Z
30. tBodyGyroJerk-std()-X
31. tBodyGyroJerk-std()-Y
32. tBodyGyroJerk-std()-Z
33. tBodyAccMag-mean()
34. tBodyAccMag-std()
35. tGravityAccMag-mean()
36. tGravityAccMag-std()
37. tBodyAccJerkMag-mean()
38. tBodyAccJerkMag-std()
39. tBodyGyroMag-mean()
40. tBodyGyroMag-std()
41. tBodyGyroJerkMag-mean()
42. tBodyGyroJerkMag-std()
43. fBodyAcc-mean()-X
44. fBodyAcc-mean()-Y
45. fBodyAcc-mean()-Z
46. fBodyAcc-std()-X
47. fBodyAcc-std()-Y
48. fBodyAcc-std()-Z
49. fBodyAcc-meanFreq()-X
50. fBodyAcc-meanFreq()-Y
51. fBodyAcc-meanFreq()-Z
52. fBodyAccJerk-mean()-X
53. fBodyAccJerk-mean()-Y
54. fBodyAccJerk-mean()-Z
55. fBodyAccJerk-std()-X
56. fBodyAccJerk-std()-Y
57. fBodyAccJerk-std()-Z
58. fBodyAccJerk-meanFreq()-X
59. fBodyAccJerk-meanFreq()-Y
60. fBodyAccJerk-meanFreq()-Z
61. fBodyGyro-mean()-X
62. fBodyGyro-mean()-Y
63. fBodyGyro-mean()-Z
64. fBodyGyro-std()-X
65. fBodyGyro-std()-Y
66. fBodyGyro-std()-Z
67. fBodyGyro-meanFreq()-X
68. fBodyGyro-meanFreq()-Y
69. fBodyGyro-meanFreq()-Z
70. fBodyAccMag-mean()
71. fBodyAccMag-std()
72. fBodyAccMag-meanFreq()
73. fBodyBodyAccJerkMag-mean()
74. fBodyBodyAccJerkMag-std()
75. fBodyBodyAccJerkMag-meanFreq()
76. fBodyBodyGyroMag-mean()
77. fBodyBodyGyroMag-std()
78. fBodyBodyGyroMag-meanFreq()
79. fBodyBodyGyroJerkMag-mean()
80. fBodyBodyGyroJerkMag-std()
81. fBodyBodyGyroJerkMag-meanFreq()


## The tidy data

* The training dataset was merged by binding by column the subject, labels and
  set of the training data.

* The test dataset was merged by binding by column the subject, labels and set of
  the test data.

* A merged dataset was then created by concatenating the train and test dataset.

* The activity was transformed into a factor, Activity (levels: WALKING,
  WALKING_UPSTAIRS ,WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

* The measurements on the mean and standard deviation were extracted by reading 
  the features and stored in the columns (tBodyAcc-mean()-X, ..., fBodyBodyGyroJerkMag-meanFreq())
  (columns 3 to 81)

* The resulting dataset was then grouped by subject and activity and sorted by
  subject. For each group, the mean value of the columns (3-81) was calculated. 

##Purpose of this file
This file provides additional information about the variables, data and transformations used in the course Getting and Cleaning Data.
##Project
Human Activity Recognition Using Smartphones Data Set
###Abstract
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
###Data Set Information	
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
###Data Source
A description of the data used in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)  
and the corresponding data can be downloaded   [here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)  
###Attribute Information
For each record in the dataset it is provided:
Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
Triaxial Angular velocity from the gyroscope.
A 561-feature vector with time and frequency domain variables.
Its activity label.
An identifier of the subject who carried out the experiment. 
###File Information
**features_info.txt**  
Shows information about the variables used on the feature vector.  
**features.txt**  
List of all features.  
**activity_labels.txt**  
Links the class labels with their activity name.  
**train/X_train.txt**  
Training set.  
**train/y_train.txt**  
Training labels.  
**test/X_test.txt**  
Test set.  
**test/y_test.txt**  
Test labels.  

The following files are available for the train and test data. Their descriptions are equivalent.  
**train/subject_train.txt**  
Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.  
**train/Inertial Signals/total_acc_x_train.txt**  
The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the **total_acc_x_train.txt** and **total_acc_z_train.txt** files for the Y and Z axis.  
**rain/Inertial Signals/body_acc_x_train.txt**  
The body acceleration signal obtained by subtracting the gravity from the total acceleration.  
**train/Inertial Signals/body_gyro_x_train.txt**  
The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.  
## Transformation Information
After downloading and uncompressing the data, the resulting directory UCI HAR Dataset are copied to R-Studio's working directory.
###Preparation
Clear Global Environment
###Step #1 (Merge training and test set to 1 data set)
After loading files into tables, train and test data are merged into variables train_data and test_data. These 2 data sets are merged to HAR_data using rbind and column names are renamed.
###Step #2 (Extract mean and standard deviation)
Columns containing mean and standard deviation data are subset; subject and activity column are added.
###Step #3 (Replace activity codes by activity names)
In this step activity ids are replaced by their names provided in file activity_labels.txt.
###Step #4 (Provide descriptive variable names)
Abbreviations are replaced by their full names.
###Step #5 (Create independent tidy data set and do some processing)
Data in HAR_data are aggregated using aggregate function and ordered by subject and activity. The resulting object HAR_data_aggregated is saved as TidyData.txt applying the requested parameter row.name=FALSE.
###Step #6 (Basic quality check)
TidyData.txt is loaded and the number of imported lines is compared with 181 (30 subject with 6 activities each and 1 header line)



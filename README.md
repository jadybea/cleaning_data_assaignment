# cleaning_data_assaignment
## Course project of the Getting and Cleaning Data Course of the Johns Hopkins Bloomberg School of Public Health on Coursera

This assaignment requires the cleaning of the dataset found at 
* "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip".

The following information about the dataset was provided by the authors: 
"Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 



#PROCEDURE

I am submitting a script called "run_analysis.R" that I used to prepare the dataset. The script works only if the dataset files are downloaded, unpacked and all found in the working directory of R. 

I am also submitting the codebook accompanying the resulted tidy dataset that describes the data, the variables and the transformations encoded by the "run_analysis.R" script. 

Finally, I am submitting the tidy dataset to the course submission page. To visualise the dataset, please use the following code in R:

The tidy dataset fulfills all three criteria of tidy data:
* Each variable forms a column. 
* Each observation forms a row. 
* The table stores the data about one kind of observation (i.e.all variables are normalized values of the accelerometer and gyroscope measurements.)

The number of observations equals to 180 (180 rows) as the observation is determined as an activity for a specific person = combination of the first two colums named "subject" and "activity". As there were 30 participants and 6 activities, the combination of the two results in 30 x 6 = 180, as each activity was recorded for each person. 

For each observation, several parameters were recorded by the accelerometer and gyroscope. This is the reason why we have several (66) variables (columns 3-68) for each observation (row). Although the variables could be separated and listed as one observation-one variable, resulting in 66 x 180 = 11880 rows, I decided to keep them together, because the variables are interconnected (for example vectorial parts of the same movement), and 

For ideas to clean the dataset, I used the following references beside the video lectures found on the course page:

* Hadley Wickham. Tidy data. The Journal of Statistical Software, vol. 59, 2014.
* https://class.coursera.org/getdata-014/forum/thread?thread_id=31



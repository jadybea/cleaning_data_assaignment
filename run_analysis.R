

test_y <- read.csv("y_test.txt", header = FALSE)
train_y <- read.csv("y_train.txt", header = FALSE)
train_subject <- read.csv("subject_train.txt", header = FALSE)
test_subject <- read.csv("subject_test.txt", header = FALSE)
train_X <- read.csv("X_train.txt", sep = "", header = FALSE)
test_X <- read.csv("X_test.txt", sep = "", header = FALSE)

test_2 <- cbind(test_subject, test_y)
test_all <- cbind(test_2, test_X)

train_2 <- cbind(train_subject, train_y)
train_all <- cbind(train_2, train_X)

all <- rbind(train_all, test_all)

data <- all[, c(1:8, 43:48, 83:88, 123:128, 163:168, 203, 204, 216, 217, 229, 230, 242, 243, 255, 256, 268:273, 347:352, 
                426:431, 505, 506, 518, 519, 531, 532, 544, 545)]

colnames(data) <- c("subject","activity","tBodyAcc-mean-X", "tBodyAcc-mean-Y", "tBodyAcc-mean-Z", "tBodyAcc-std-X", "tBodyAcc-std-Y", "tBodyAcc-std-Z", "tGravityAcc-mean-X", "tGravityAcc-mean-Y", "tGravityAcc-mean-Z", "tGravityAcc-std-X", "tGravityAcc-std-Y", "tGravityAcc-std-Z", "tBodyAccJerk-mean-X", "tBodyAccJerk-mean-Y", "tBodyAccJerk-mean-Z", "tBodyAccJerk-std-X", "tBodyAccJerk-std-Y", "tBodyAccJerk-std-Z", "tBodyGyro-mean-X", "tBodyGyro-mean-Y", "tBodyGyro-mean-Z", "tBodyGyro-std-X", "tBodyGyro-std-Y", "tBodyGyro-std-Z", "tBodyGyroJerk-mean-X", "tBodyGyroJerk-mean-Y", "tBodyGyroJerk-mean-Z", "tBodyGyroJerk-std-X", "tBodyGyroJerk-std-Y", "tBodyGyroJerk-std-Z", "tBodyAccMag-mean", "tBodyAccMag-std", "tGravityAccMag-mean", "tGravityAccMag-std", "tBodyAccJerkMag-mean", "tBodyAccJerkMag-std", "tBodyGyroMag-mean", "tBodyGyroMag-std", "tBodyGyroJerkMag-mean", "tBodyGyroJerkMag-std", "fBodyAcc-mean-X", "fBodyAcc-mean-Y", "fBodyAcc-mean-Z", "fBodyAcc-std-X", "fBodyAcc-std-Y", "fBodyAcc-std-Z", "fBodyAccJerk-mean-X", "fBodyAccJerk-mean-Y", "fBodyAccJerk-mean-Z", "fBodyAccJerk-std-X", "fBodyAccJerk-std-Y", "fBodyAccJerk-std-Z", "fBodyGyro-mean-X", "fBodyGyro-mean-Y", "fBodyGyro-mean-Z", "fBodyGyro-std-X", "fBodyGyro-std-Y", "fBodyGyro-std-Z", "fBodyAccMag-mean", "fBodyAccMag-std", "fBodyBodyAccJerkMag-mean", "fBodyBodyAccJerkMag-std", "fBodyBodyGyroMag-mean", "fBodyBodyGyroMag-std", "fBodyBodyGyroJerkMag-mean", "fBodyBodyGyroJerkMag-std")

library("dplyr")

data2 <- tbl_df(data)

data3 <- arrange(data2, subject, activity)

data3$activity <- as.factor(data3$activity)

data3$activity <-factor(data3$activity,labels= c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

data4 <- group_by(data3, subject, activity)

data5 <- summarise_each(data4, funs(mean))

View(data5)




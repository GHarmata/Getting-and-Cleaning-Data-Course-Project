run_analysis <- function(..., download = "yes"){
    # Preliminary work to get the dataset into R; removes previously created
    # datasets in the process to free up memory
    
    ### A. Download the data set and unzip; can be skipped if data has
    ### already been downloaded
    
    if(download == "yes" | !file.exists("UCI HAR Dataset")){
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
                      destfile = "UCI_HAR_dataset.zip", method = "curl")
        
        unzip("UCI_HAR_dataset.zip")
       
        assign("UCI_HAR_date_downloaded", date(), envir = .GlobalEnv)
    } 
  
    print("Data is loading, please wait...")


    ### B. Get features list and activites list
    read.table("UCI HAR Dataset/features.txt")->features
    read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("V1", "Activity_Type"))->activities
    
    ### C. Get test data and merge
    read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")->subjecttest
    read.table("UCI HAR Dataset/test/X_test.txt")->xtest
    read.table("UCI HAR Dataset/test/y_test.txt", col.names = "label")->ytest
    
    as.character(features$V2) -> colnames(xtest)
    
    cbind(ytest, subjecttest, xtest) -> test
    
    rm(xtest, ytest, subjecttest)
    
    ### D. Get training data and merge
    
    read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")->subjecttrain
    read.table("UCI HAR Dataset/train/X_train.txt")->xtrain
    read.table("UCI HAR Dataset/train/y_train.txt", col.names = "label")->ytrain

    as.character(features$V2) -> colnames(xtrain)
    
    cbind(ytrain, subjecttrain, xtrain) -> train
    
    rm(ytrain, subjecttrain, xtrain)
    
    # Goal 1 (from instructions): "Merges the training and the test sets to
    # create one data set."
    
    rbind(train, test) -> dataset
    
    rm(test, train)
    
    # Goal 2: "Extracts only the measurements on the mean and standard deviation
    # for each measurement.
    
    grep("std", colnames(dataset)) -> std_cols
    grep("mean", colnames(dataset), ignore.case = TRUE) -> mean_cols
       
    dataset[ , c(1, 2, std_cols, mean_cols)] -> dataset_trim
    
    rm(dataset)
    
    
    # Goal 3: "Uses descriptive activity names to name the activities in the data set"
    
    ### This step combines two tasks.  First, it merges the activity labels to 
    ### the dataset; this results in two columns corresponding to the activites 
    ### (one with number-only class labels, and one with the corresponding
    ### activity names). Then it removes the resulting data frame's first
    ### column, which is the number-only activity column.
    
    (merge(activities, dataset_trim, by.x = "V1", 
          by.y = "label", all = TRUE))[ , -1] -> df_merge


    # Goal 4: "Appropriately labels the data set with descriptive variable names."
    
    colnames(df_merge) <- c("activity.type","subject.ID","t_body.Accel_stdev.X",
                            "t_body.Accel_stdev.Y","t_body.Accel_stdev.Z",
                            "t_grav.Accel_stdev.X","t_grav.Accel_stdev.Y",
                            "t_grav.Accel_stdev.Z","t_body.Accel.Jerk_stdev.X",
                            "t_body.Accel.Jerk_stdev.Y","t_body.Accel.Jerk_stdev.Z",
                            "t_body.Gyro_stdev.X","t_body.Gyro_stdev.Y",
                            "t_body.Gyro_stdev.Z","t_body.Gyro.Jerk_stdev.X",
                            "t_body.Gyro.Jerk_stdev.Y","t_body.Gyro.Jerk_stdev.Z",
                            "t_body.Accel.Mag_stdev","t_grav.Accel.Mag_stdev",
                            "t_body.Accel.Jerk.Mag_stdev","t_body.Gyro.Mag_stdev",
                            "t_body.Gyro.Jerk.Mag_stdev","f_body.Accel_stdev.X",
                            "f_body.Accel_stdev.Y","f_body.Accel_stdev.Z",
                            "f_body.Accel.Jerk_stdev.X","f_body.Accel.Jerk_stdev.Y",
                            "f_body.Accel.Jerk_stdev.Z","f_body.Gyro_stdev.X",
                            "f_body.Gyro_stdev.Y","f_body.Gyro_stdev.Z",
                            "f_body.Accel.Mag_stdev","f_body.Accel.Jerk.Mag_stdev",
                            "f_body.Gyro.Mag_stdev","f_body.Gyro.Jerk.Mag_stdev",
                            "t_body.Accel_mean.X","t_body.Accel_mean.Y",
                            "t_body.Accel_mean.Z","t_grav.Accel_mean.X",
                            "t_grav.Accel_mean.Y","t_grav.Accel_mean.Z",
                            "t_body.Accel.Jerk_mean.X","t_body.Accel.Jerk_mean.Y",
                            "t_body.Accel.Jerk_mean.Z","t_body.Gyro_mean.X",
                            "t_body.Gyro_mean.Y","t_body.Gyro_mean.Z",
                            "t_body.Gyro.Jerk_mean.X","t_body.Gyro.Jerk_mean.Y",
                            "t_body.Gyro.Jerk_mean.Z","t_body.Accel.Mag_mean",
                            "t_grav.Accel.Mag_mean","t_body.Accel.Jerk.Mag_mean",
                            "t_body.Gyro.Mag_mean","t_body.Gyro.Jerk.Mag_mean",
                            "f_body.Accel_mean.X","f_body.Accel_mean.Y",
                            "f_body.Accel_mean.Z","f_body.Accel_meanFreq.X",
                            "f_body.Accel_meanFreq.Y","f_body.Accel_meanFreq.Z",
                            "f_body.Accel.Jerk_mean.X","f_body.Accel.Jerk_mean.Y",
                            "f_body.Accel.Jerk_mean.Z","f_body.Accel.Jerk_meanFreq.X",
                            "f_body.Accel.Jerk_meanFreq.Y","f_body.Accel.Jerk_meanFreq.Z",
                            "f_body.Gyro_mean.X","f_body.Gyro_mean.Y",
                            "f_body.Gyro_mean.Z","f_body.Gyro_meanFreq.X",
                            "f_body.Gyro_meanFreq.Y","f_body.Gyro_meanFreq.Z",
                            "f_body.Accel.Mag_mean","f_body.Accel.Mag_meanFreq",
                            "f_body.Accel.Jerk.Mag_mean",
                            "f_body.Accel.Jerk.Mag_meanFreq",
                            "f_body.Gyro.Mag_mean","f_body.Gyro.Mag_meanFreq",
                            "f_body.Gyro.Jerk.Mag_mean",
                            "f_body.Gyro.Jerk.Mag_meanFreq",
                            "angle__t_body.AccelMean_gravMean",
                            "angle__t_body.Accel.JerkMean_gravMean",
                            "angle__t_body.GyroMean_gravMean",
                            "angle__t_body.Gyro.JerkMean_gravMean","angle__X_gravMean",
                            "angle__Y_gravMean","angle__Z_gravMean")
    
    # Goal 5: "From the data set in step 4, creates a second, independent tidy data set
    # with the average of each variable for each activity and each subject."
    
    run_analysis_res <<- aggregate(df_merge[,3:88], 
                                   by = list(subject.ID = df_merge$subject.ID, 
                                             activity.type = df_merge$activity.type), mean)
    run_analysis_res
}

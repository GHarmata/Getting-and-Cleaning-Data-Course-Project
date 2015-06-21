# Codebook for the Getting-and-Cleaning-Data Course Project
================

This codebook is in fulfillment of the course project for the Coursera course entitled "Getting and Cleaning Data" using the UCI HAR Samsung Galaxy S accelerometer and gyroscope dataset [1].

## Introduction

This file contains the list of variables names and their descriptions for the tidy data output of the run_analysis.R script. The output of this script contains the averaged mean and standard deviation measurements for each participant for each activity.

### Study Design

Investigators Reyes-Ortiz et al.  recruited 30 participants between the ages of 19 and 48 years and had each perform six activities while wearing a Samsung Galaxy S II smartphone [1].  The purpose of having participants engage in these different physical activities was to assess the signals of gyroscope and accelerometer built into the Samsung Galaxy S II.  

Originally, the results of 30-participant dataset were split post-hoc into two groups (training and test).  Since these groupings were arbitrary and did not differ in methodology, they were re-grouped for the purposes of the current data cleaning project.

Further details on the original data collection can be found in this project's [readme](https://github.com/GHarmata/Getting-and-Cleaning-Data-Course-Project/blob/master/README.md) or in the documentation for the UCI HAR dataset [1].

### Other notes

The units of the gyroscope signals are radians/second, and the units of the accelerometer signals are in gravity units (g).  Calculated mean frequencies are presumably in Hz; however, the original dataset documentation is not explicit on this point.

## Codebook (Variables and Descriptions)

**activity.type**<br>

	Activity performed by subject during measurement; 6 levels
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

**subject.ID**<br>

    Subject identification number; 30 levels (i.e., 1 through 30)


**t_body.Accel_stdev.X**<br>

    Standard deviation for X-direction of time domain signal for body acceleration from Accelerometer


**t_body.Accel_stdev.Y**<br>

    Standard deviation for Y-direction of time domain signal for body acceleration from Accelerometer


**t_body.Accel_stdev.Z**<br>

    Standard deviation for Z-direction of time domain signal for body acceleration from Accelerometer


**t_grav.Accel_stdev.X**<br>

    Standard deviation for X-direction of time domain signal for gravity acceleration from Accelerometer


**t_grav.Accel_stdev.Y**<br>

    Standard deviation for Y-direction of time domain signal for gravity acceleration from Accelerometer


**t_grav.Accel_stdev.Z**<br>

    Standard deviation for Z-direction of time domain signal for gravity acceleration from Accelerometer


**t_body.Accel.Jerk_stdev.X**<br>

    Standard deviation for jerk signal X-direction of time domain signal for body acceleration from Accelerometer


**t_body.Accel.Jerk_stdev.Y**<br>

    Standard deviation for jerk signal Y-direction of time domain signal for body acceleration from Accelerometer


**t_body.Accel.Jerk_stdev.Z**<br>

    Standard deviation for jerk signal Z-direction of time domain signal for body acceleration from Accelerometer


**t_body.Gyro_stdev.X**<br>

    Standard deviation for X-direction of time domain signal for body acceleration from Gyroscope


**t_body.Gyro_stdev.Y**<br>

    Standard deviation for Y-direction of time domain signal for body acceleration from Gyroscope


**t_body.Gyro_stdev.Z**<br>

    Standard deviation for Z-direction of time domain signal for body acceleration from Gyroscope


**t_body.Gyro.Jerk_stdev.X**<br>

    Standard deviation for jerk signal X-direction of time domain signal for body acceleration from Gyroscope


**t_body.Gyro.Jerk_stdev.Y**<br>

    Standard deviation for jerk signal Y-direction of time domain signal for body acceleration from Gyroscope


**t_body.Gyro.Jerk_stdev.Z**<br>

    Standard deviation for jerk signal Z-direction of time domain signal for body acceleration from Gyroscope


**t_body.Accel.Mag_stdev**<br>

    Standard deviation of magnitude of time domain signal for body acceleration from Accelerometer


**t_grav.Accel.Mag_stdev**<br>

    Standard deviation of magnitude of time domain signal for gravity acceleration from Accelerometer


**t_body.Accel.Jerk.Mag_stdev**<br>

    Standard deviation of jerk signal magnitude for time domain signal for body acceleration from Accelerometer


**t_body.Gyro.Mag_stdev**<br>

    Standard deviation of magnitude of time domain signal for body acceleration from Gyroscope


**t_body.Gyro.Jerk.Mag_stdev**<br>

    Standard deviation of jerk signal magnitude for time domain signal for body acceleration from Gyroscope


**f_body.Accel_stdev.X**<br>

    Standard deviation for X-direction when Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel_stdev.Y**<br>

    Standard deviation for Y-direction when Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel_stdev.Z**<br>

    Standard deviation for Z-direction when Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel.Jerk_stdev.X**<br>

    Standard deviation for jerk signal X-direction when Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel.Jerk_stdev.Y**<br>

    Standard deviation for jerk signal Y-direction when Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel.Jerk_stdev.Z**<br>

    Standard deviation for jerk signal Z-direction when Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Gyro_stdev.X**<br>

    Standard deviation for X-direction when Fast Fourier Transform (FFT) applied to body acceleration from Gyroscope


**f_body.Gyro_stdev.Y**<br>

    Standard deviation for Y-direction when Fast Fourier Transform (FFT) applied to body acceleration from Gyroscope


**f_body.Gyro_stdev.Z**<br>

    Standard deviation for Z-direction when Fast Fourier Transform (FFT) applied to body acceleration from Gyroscope


**f_body.Accel.Mag_stdev**<br>

    Standard deviation of magnitude when Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel.Jerk.Mag_stdev**<br>

    Standard deviation of jerk signal magnitude when Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Gyro.Mag_stdev**<br>

    Standard deviation of magnitude when Fast Fourier Transform (FFT) applied to body acceleration from Gyroscope


**f_body.Gyro.Jerk.Mag_stdev**<br>

    Standard deviation of jerk signal magnitude when Fast Fourier Transform (FFT) applied to body acceleration from Gyroscope


**t_body.Accel_mean.X**<br>

    Mean of X-direction for time domain signal for body acceleration from Accelerometer


**t_body.Accel_mean.Y**<br>

    Mean of Y-direction for time domain signal for body acceleration from Accelerometer


**t_body.Accel_mean.Z**<br>

    Mean of Z-direction for time domain signal for body acceleration from Accelerometer


**t_grav.Accel_mean.X**<br>

    Mean of X-direction for time domain signal for gravity acceleration from Accelerometer


**t_grav.Accel_mean.Y**<br>

    Mean of Y-direction for time domain signal for gravity acceleration from Accelerometer


**t_grav.Accel_mean.Z**<br>

    Mean of Z-direction for time domain signal for gravity acceleration from Accelerometer


**t_body.Accel.Jerk_mean.X**<br>

    Mean jerk signal of X-direction for time domain signal for body acceleration from Accelerometer


**t_body.Accel.Jerk_mean.Y**<br>

    Mean jerk signal of Y-direction for time domain signal for body acceleration from Accelerometer


**t_body.Accel.Jerk_mean.Z**<br>

    Mean jerk signal of Z-direction for time domain signal for body acceleration from Accelerometer


**t_body.Gyro_mean.X**<br>

    Mean of X-direction for time domain signal for body acceleration from Gyroscope


**t_body.Gyro_mean.Y**<br>

    Mean of Y-direction for time domain signal for body acceleration from Gyroscope


**t_body.Gyro_mean.Z**<br>

    Mean of Z-direction for time domain signal for body acceleration from Gyroscope


**t_body.Gyro.Jerk_mean.X**<br>

    Mean jerk signal of X-direction for time domain signal for body acceleration from Gyroscope


**t_body.Gyro.Jerk_mean.Y**<br>

    Mean jerk signal of Y-direction for time domain signal for body acceleration from Gyroscope


**t_body.Gyro.Jerk_mean.Z**<br>

    Mean jerk signal of Z-direction for time domain signal for body acceleration from Gyroscope


**t_body.Accel.Mag_mean**<br>

    Mean magnitude of time domain signal for body acceleration from Accelerometer


**t_grav.Accel.Mag_mean**<br>

    Mean magnitude of time domain signal for gravity acceleration from Accelerometer


**t_body.Accel.Jerk.Mag_mean**<br>

    Mean jerk signal magnitude for time domain signal for body acceleration from Accelerometer


**t_body.Gyro.Mag_mean**<br>

    Mean magnitude of time domain signal for body acceleration from Gyroscope


**t_body.Gyro.Jerk.Mag_mean**<br>

    Mean jerk signal magnitude for time domain signal for body acceleration from Gyroscope


**f_body.Accel_mean.X**<br>

    Mean of X-direction for Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel_mean.Y**<br>

    Mean of Y-direction for Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel_mean.Z**<br>

    Mean of Z-direction for Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel_meanFreq.X**<br>

    Mean frequency of X-direction for Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel_meanFreq.Y**<br>

    Mean frequency of Y-direction for Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel_meanFreq.Z**<br>

    Mean frequency of Z-direction for Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel.Jerk_mean.X**<br>

    Mean jerk signal of X-direction for Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel.Jerk_mean.Y**<br>

    Mean jerk signal of Y-direction for Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel.Jerk_mean.Z**<br>

    Mean jerk signal of Z-direction for Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel.Jerk_meanFreq.X**<br>

    Mean frequency of jerk signal of X-direction for Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel.Jerk_meanFreq.Y**<br>

    Mean frequency of jerk signal of Y-direction for Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel.Jerk_meanFreq.Z**<br>

    Mean frequency of jerk signal of Z-direction for Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Gyro_mean.X**<br>

    Mean of X-direction for Fast Fourier Transform (FFT) applied to body acceleration from Gyroscope


**f_body.Gyro_mean.Y**<br>

    Mean of Y-direction for Fast Fourier Transform (FFT) applied to body acceleration from Gyroscope


**f_body.Gyro_mean.Z**<br>

    Mean of Z-direction for Fast Fourier Transform (FFT) applied to body acceleration from Gyroscope


**f_body.Gyro_meanFreq.X**<br>

    Mean frequency of X-direction for Fast Fourier Transform (FFT) applied to body acceleration from Gyroscope


**f_body.Gyro_meanFreq.Y**<br>

    Mean frequency of Y-direction for Fast Fourier Transform (FFT) applied to body acceleration from Gyroscope


**f_body.Gyro_meanFreq.Z**<br>

    Mean frequency of Z-direction for Fast Fourier Transform (FFT) applied to body acceleration from Gyroscope


**f_body.Accel.Mag_mean**<br>

    Mean magnitude of Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel.Mag_meanFreq**<br>

    Mean magnitude of Freq Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel.Jerk.Mag_mean**<br>

    Mean jerk signal magnitude when Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Accel.Jerk.Mag_meanFreq**<br>

    Mean frequency of jerk signal magnitude when Fast Fourier Transform (FFT) applied to body acceleration from Accelerometer


**f_body.Gyro.Mag_mean**<br>

    Mean signal magnitude when Fast Fourier Transform (FFT) applied to body acceleration from Gyroscope


**f_body.Gyro.Mag_meanFreq**<br>

    Mean frequency of signal magnitude when Fast Fourier Transform (FFT) applied to body acceleration from Gyroscope


**f_body.Gyro.Jerk.Mag_mean**<br>

    Mean jerk signal magnitude when Fast Fourier Transform (FFT) applied to body acceleration from Gyroscope


**f_body.Gyro.Jerk.Mag_meanFreq**<br>

    Mean frequency of jerk signal magnitude when Fast Fourier Transform (FFT) applied to body acceleration from Gyroscope jerk signal


**angle__t_body.AccelMean_gravMean**<br>

    Angle between (1) mean time domain signal for body acceleration from Accelerometer (from a sample window) and (2) mean gravity acceleration signal (from a sample window)


**angle__t_body.Accel.JerkMean_gravMean**<br>

    Angle between (1) mean time domain signal for body acceleration from Accelerometer jerk signal (from a sample window) and (2) mean gravity acceleration signal (from a sample window)


**angle__t_body.GyroMean_gravMean**<br>

    Angle between (1) mean time domain signal for body acceleration from Gyroscope (from a sample window) and (2) mean gravity acceleration signal (from a sample window)


**angle__t_body.Gyro.JerkMean_gravMean**<br>

    Angle between (1) mean time domain signal for body acceleration from Gyroscope jerk signal (from a sample window) and (2) mean gravity acceleration signal (from a sample window)


**angle__X_gravMean**<br>

    Angle between (1) X and (2) mean gravity acceleration signal (from a sample window)


**angle__Y_gravMean**<br>

    Angle between (2) Y and (2) mean gravity acceleration signal (from a sample window)


**angle__Z_gravMean**<br>

    Angle between (3) Z and (2) mean gravity acceleration signal (from a sample window)


-----------
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012. <br>
[Link to Dataset.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.)


 # C3DS_GettingandCleaningDataCourseProject


### Data
File "UCI\_HAR\_tidied\_version.txt" is a text file with  space seperated values of columns.
First row is header row, with names and meanings of values.
The later 180 rows are described by 81 columns, with 2 identifier columns: "activity" and "subject" and calculated averages of 79 numerical values.  Averages are calculated per (activity,subject).

### Variables - columns of result set.

Descriptions of columns of result file in format <ordering number> - <column\_name> - optional additional desciption:

 [1] "subject"		- Subject identifier, integer, ranges from 1 to 30  
 [2] "activity"     - Activity identifier, string with 6 possible values:
    WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS , SITTING, STANDING, LAYING ;

Next are comming groups of averages of measurements - floating-point values, normalised and bounded within range [-1,1].
Measurements are averaged by subject and activity from source file https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2UCI%20HAR%20Dataset.zip

##### Time-Domain signals:

_Average time-domain body acceleration in the X, Y and Z directions:_
 [3] "timeDomainBodyAccelerometerMeanX"                              
 [4] "timeDomainBodyAccelerometerMeanY"                              
 [5] "timeDomainBodyAccelerometerMeanZ"                              

_Standard deviation of the time-domain body acceleration in the X, Y and Z directions:_
 [6] "timeDomainBodyAccelerometerStandardDeviationX"                 
 [7] "timeDomainBodyAccelerometerStandardDeviationY"                 
 [8] "timeDomainBodyAccelerometerStandardDeviationZ"                 

_Average time-domain gravity acceleration in the X, Y and Z directions:_
 [9] "timeDomainGravityAccelerometerMeanX"                           
[10] "timeDomainGravityAccelerometerMeanY"                           
[11] "timeDomainGravityAccelerometerMeanZ"                           

_Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:_
[12] "timeDomainGravityAccelerometerStandardDeviationX"              
[13] "timeDomainGravityAccelerometerStandardDeviationY"              
[14] "timeDomainGravityAccelerometerStandardDeviationZ"              

_Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:_
[15] "timeDomainBodyAccelerometerJerkMeanX"                          
[16] "timeDomainBodyAccelerometerJerkMeanY"                          
[17] "timeDomainBodyAccelerometerJerkMeanZ"                          

_Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:_
[18] "timeDomainBodyAccelerometerJerkStandardDeviationX"             
[19] "timeDomainBodyAccelerometerJerkStandardDeviationY"             
[20] "timeDomainBodyAccelerometerJerkStandardDeviationZ"             

_Average time-domain body angular velocity in the X, Y and Z directions:_
[21] "timeDomainBodyGyroscopeMeanX"                                  
[22] "timeDomainBodyGyroscopeMeanY"                                  
[23] "timeDomainBodyGyroscopeMeanZ"                                  

_Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:_
[24] "timeDomainBodyGyroscopeStandardDeviationX"                     
[25] "timeDomainBodyGyroscopeStandardDeviationY"                     
[26] "timeDomainBodyGyroscopeStandardDeviationZ"                     

_Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:_
[27] "timeDomainBodyGyroscopeJerkMeanX"                              
[28] "timeDomainBodyGyroscopeJerkMeanY"                              
[29] "timeDomainBodyGyroscopeJerkMeanZ"                              

_Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:_
[30] "timeDomainBodyGyroscopeJerkStandardDeviationX"                 
[31] "timeDomainBodyGyroscopeJerkStandardDeviationY"                 
[32] "timeDomainBodyGyroscopeJerkStandardDeviationZ"                 

_Average and standard deviation of the time-domain magnitude of body acceleration:_
[33] "timeDomainBodyAccelerometerMagnitudeMean"                      
[34] "timeDomainBodyAccelerometerMagnitudeStandardDeviation"  
_Average and standard deviation of the time-domain magnitude of gravity acceleration:_
[35] "timeDomainGravityAccelerometerMagnitudeMean"                   
[36] "timeDomainGravityAccelerometerMagnitudeStandardDeviation"      

_Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):_
[37] "timeDomainBodyAccelerometerJerkMagnitudeMean"                  
[38] "timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation"     

_Average and standard deviation of the time-domain magnitude of body angular velocity:_
[39] "timeDomainBodyGyroscopeMagnitudeMean"                          
[40] "timeDomainBodyGyroscopeMagnitudeStandardDeviation"             

_Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):_
[41] "timeDomainBodyGyroscopeJerkMagnitudeMean"                      
[42] "timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation"  

##### Frequency-domain signals
_Average frequency-domain body acceleration in the X, Y and Z directions:_
[43] "frequencyDomainBodyAccelerometerMeanX"                         
[44] "frequencyDomainBodyAccelerometerMeanY"                         
[45] "frequencyDomainBodyAccelerometerMeanZ"    
                     
_Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:_
[46] "frequencyDomainBodyAccelerometerStandardDeviationX"            
[47] "frequencyDomainBodyAccelerometerStandardDeviationY"            
[48] "frequencyDomainBodyAccelerometerStandardDeviationZ"            

_Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:_
[49] "frequencyDomainBodyAccelerometerMeanFrequencyX"                
[50] "frequencyDomainBodyAccelerometerMeanFrequencyY"                
[51] "frequencyDomainBodyAccelerometerMeanFrequencyZ"                

_Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:_
[52] "frequencyDomainBodyAccelerometerJerkMeanX"                     
[53] "frequencyDomainBodyAccelerometerJerkMeanY"                     
[54] "frequencyDomainBodyAccelerometerJerkMeanZ"                     

_Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:_
[55] "frequencyDomainBodyAccelerometerJerkStandardDeviationX"        
[56] "frequencyDomainBodyAccelerometerJerkStandardDeviationY"        
[57] "frequencyDomainBodyAccelerometerJerkStandardDeviationZ"        

_Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:_
[58] "frequencyDomainBodyAccelerometerJerkMeanFrequencyX"            
[59] "frequencyDomainBodyAccelerometerJerkMeanFrequencyY"            
[60] "frequencyDomainBodyAccelerometerJerkMeanFrequencyZ"            

_Average frequency-domain body angular velocity in the X, Y and Z directions:_
[61] "frequencyDomainBodyGyroscopeMeanX"                             
[62] "frequencyDomainBodyGyroscopeMeanY"                             
[63] "frequencyDomainBodyGyroscopeMeanZ"                             

_Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:_
[64] "frequencyDomainBodyGyroscopeStandardDeviationX"                
[65] "frequencyDomainBodyGyroscopeStandardDeviationY"                
[66] "frequencyDomainBodyGyroscopeStandardDeviationZ"                

_Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:_
[67] "frequencyDomainBodyGyroscopeMeanFrequencyX"                    
[68] "frequencyDomainBodyGyroscopeMeanFrequencyY"                    
[69] "frequencyDomainBodyGyroscopeMeanFrequencyZ"                    

_Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:_
[70] "frequencyDomainBodyAccelerometerMagnitudeMean"                 
[71] "frequencyDomainBodyAccelerometerMagnitudeStandardDeviation"    
[72] "frequencyDomainBodyAccelerometerMagnitudeMeanFrequency"        

_Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):_
[73] "frequencyDomainBodyAccelerometerJerkMagnitudeMean"             
[74] "frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation"
[75] "frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency"    

_Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:_
[76] "frequencyDomainBodyGyroscopeMagnitudeMean"                     
[77] "frequencyDomainBodyGyroscopeMagnitudeStandardDeviation"        
[78] "frequencyDomainBodyGyroscopeMagnitudeMeanFrequency"     

_Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):_
[79] "frequencyDomainBodyGyroscopeJerkMagnitudeMean"                 
[80] "frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation"    
[81] "frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency"   

### Transfomations :

Original source : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Applied operations (contained in run\_analysis.R file) on source data were applied, as submission requirements described.

0. Downloading and unzipping ;
1. Training and test sets in appropriate, separate text files were merged from different text files into train and test set, then into one set ;
2. Of 561 columns, only columns referencing to mean and standard deviation were used in later transformation ;
3. Values of Activity column described by integer values 1:6 were refilled with descriptive text values ;
4. Column names were replaced with more descriptive ones :
	- special, technical  character were removed, like "(" , ")" , "-" ;
	- special abreviations, being parts of original names of columns, were expanded into full names :
		f    -> frequencyDomain
		t    -> timeDomain
		Acc  -> Accelerometer
        Freq -> Frequency
        Gyro -> Gyroscope
        Mag  -> Magnitude
        mean -> Mean
        std  -> StandardDeviation
5. Final data set contains average of each variable for rows referencig to the same tuple of (activity, subject) and was stored into *"UCI_HAR_tidied_version.txt"* file.

### Software used :
1. R x64 v.3.5.2 for Windows ;
2. R-Studio  v. 1.1.463 fow Windows; 
3. dplyr library - v. 0.7.8
4. Windows 10 64-bit .
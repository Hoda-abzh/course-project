

data_tab <- read.csv("course_exp.csv")
read.csv("course_exp.csv",header=TRUE,sep = ",",dec=".",fill=TRUE)
 
#HISTOGRAM PLOTS OF ALL TYPES
plot(course_exp.csv);


cleandata <- "course_exp.csv"[complete.cases(course_exp.csv)]

cleanme <- function(course_exp.csv)
  
  #SAVE THE ORIGINAL FILE
  oldfile <- write.csv(course_exp.csv, file = "oldfile.csv", row.names = FALSE, na = "")
  
  #CLEAN THE FILE. SAVE THE CLEAN. IMPORT THE CLEAN FILE. CHANGE THE TO A DATAFRAME.
  course_exp.csv <- "course_exp.csv"[complete.cases("course_exp.csv"),]
  course_exp.csv <- write.csv(course_exp.csv, file = "course_exp.csv", row.names = FALSE, na = "")
  course_exp.csv <- read.csv(file = "course_exp.csv")
  course_exp.csv <- as.data.frame("course_exp.csv")
  
  
  
  #ANALYTICS OF THE MAIN DATAFRAME
  cleansum <- summary("course_exp.csv")
  print(cleansum)
  course_exp.csv <- describe("course_exp.csv")
  print(course_exp.csv)
  
  #HISTOGRAM PLOTS OF ALL TYPES
  hist(course_exp.csv);
  
  
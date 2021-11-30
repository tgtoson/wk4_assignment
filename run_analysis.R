


library(dplyr)

#### train data ####
subtrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")

#### test data ####
subtest <- read.table("UCI HAR Dataset/test/subject_test.txt")
xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")

#### meta data ####
actlabels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

#### merge the data sets ####
traindf <- data.frame(cbind(subtrain,ytrain,xtrain))
testdf <- data.frame(cbind(subtest,ytest,xtest))
df <- data.frame(rbind(traindf,testdf))

#### name the variables, extract mean() and std() only ####
names(df) <- c("subjectid", "activity",features[,2])
exp <- "(\\b-mean()\\b)|(\\b-std()\\b)"
df <- df[,c(1,2,grep(exp,names(df)))]

#### get activity labels to replace number values for activities ####
jdf <- left_join(df, actlabels, by = c("activity" = "V1")) 
df$activity <- jdf$V2

#### average the measurements grouped by subjectid and activity ####
tdf <- df %>%
  group_by(subjectid, activity) %>%
  summarise(across(everything(), mean))

#### update measurement names in tidy data ####
updateNames <- function(x){
  for (i in seq_along(x))
  {x[i] <- paste0('Mean of ',x[i])}
  x
}
names(tdf)[-(1:2)] <- updateNames(names(tdf)[-(1:2)])

#### write dataset to txt ####
write.table(tdf,"tidy.txt", row.names = F )

#### read dataset from txt ####
finalTidyDf <- read.table("tidy.txt", header = T, check.names = F)
finalTidyDf
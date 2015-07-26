## ***********************Tidy dataset creation ***************************
setwd('UCI HAR Dataset/')

# Read the features
feature.set <- read.table('features.txt', col.names = c('index', 'name'))
features <- subset(feature.set, grepl('-(mean|std)[(]', feature.set$name))

# Read the activity labels
label.set <- read.table('activity_labels.txt', col.names = c('level', 'label'))

# Read training data and testing data sets
train.set <- load.dataset('train', features, label.set)
test.set <- load.dataset('test', features, label.set)

# Create one raw data set
combined.dataset <- rbind(train.set, test.set)

# Create the tidy data set using the combined dataset
tidy.dataset <- combined.dataset[, lapply(.SD, mean), by=list(label, subject)]

# Alter the variable names to descriptive names 
names <- names(tidy.dataset)
names <- gsub('-mean', 'Mean', names) # Replace `-mean' by `Mean'
names <- gsub('-std', 'Std', names) # Replace `-std' by 'Std'
names <- gsub('[()-]', '', names) # Remove the parenthesis and dashes
names <- gsub('BodyBody', 'Body', names) # Replace `BodyBody' by `Body'
setnames(tidy.dataset, names)

# Write the raw data and the tidy data sets to files
setwd('..')
write.csv(combined.dataset, file = 'rawdata.csv', row.names = FALSE)
write.csv(tidy.dataset, file = 'tidydata.csv', row.names = FALSE, quote = FALSE)
write.table(tidy.dataset, file="tidydata.txt", row.names = FALSE)


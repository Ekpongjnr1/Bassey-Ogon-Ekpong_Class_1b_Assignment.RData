dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("results")
dir.create("plots")

data <- read.csv(file.choose())
View(data)

str(data)

data$gender_fac <- as.factor(data$gender)
str(data)

data$diagnosis_fac <- as.factor(data$diagnosis)
str(data)

data$smoker_status <- as.factor(data$smoker)
str(data)

data$smoker_status_num <- ifelse(data$smoker_status == "yes", 1, 0)
class(data$smoker_status)

data$Smoker_Status_Binary <- ifelse(data$Smoker_Status == "Yes", 1, (0)
class(data$smoker_status)


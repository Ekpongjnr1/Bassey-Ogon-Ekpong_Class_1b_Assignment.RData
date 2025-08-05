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

data$gender_num <- ifelse(data$gender_fac == "Female", 1, 0)
class(data$gender_num)

data$gender_num <- as.factor(data$gender_num)
class(data$gender_num)

data$diagnosis_fac <- as.factor(data$diagnosis)
str(data)

data$diagnosis_num <- ifelse(data$diagnosis_fac == "cancer", 1, 0)
class(data$diagnosis_num)

data$diagnosis_num <- as.factor(data$diagnosis_num)
class(data$diagnosis_num)

data$smoker_status <- as.factor(data$smoker)
str(data)

data$smoker_status_num <- ifelse(data$smoker_status == "yes", 1, 0)
class(data$smoker_status_num)

data$smoker_status_num <- as.factor(data$smoker_status_num)
class(data$smoker_status_num)

save.image(file = "full_workspace.RData")

write.csv(disease_status, file = "results/patient_data.csv")

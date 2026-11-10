
dir.create('raw_data')
dir.create('clean_data')
dir.create('scripts')
dir.create('results')
dir.create('tasks')
dir.create('plots')

my_data <- read.csv('C:/Users/DELL/Desktop/AI_Omics_Internship_2025/Module_I/clean_data/patient_info.csv')
str(my_data)

my_data


clean_data <- my_data

clean_data


clean_data

str(clean_data)

clean_data$gender <- as.factor(my_data$gender)
clean_data$diagnosis <- as.factor(my_data$diagnosis)
clean_data$smoker <- as.factor(my_data$smoker)

clean_data

str(clean_data)

clean_data$smoking_binary <- ifelse(clean_data$smoker == "Yes", 1, 0)
str(clean_data)

clean_data$smoking_binary <- as.factor(clean_data$smoking_binary)
str(clean_data)




















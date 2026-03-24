# Activity 1
marks <- c(33,24,54,94,16,89,60,6,77,61,13,44,26,24,73,73,90,39,90,54)

A <- sum(marks >= 90 & marks <= 100)
B <- sum(marks >= 80 & marks <= 89)
C <- sum(marks >= 70 & marks <= 79)
D <- sum(marks >= 60 & marks <= 69)
E <- sum(marks >= 50 & marks <=59)
F <- sum(marks <= 49)

cat("Number of student according to grades (A,B,C,D,E,F) :")
cat('')
cat(" A:" , A)
cat(" B:" , B)
cat(" C:" , C)
cat(" D:" , D)
cat(" E:" , E)
cat(" F:" , F)

result <- marks > 49
cat("The students with marks :", marks, "pass the exam :", result)


# Activity 2
student_data <- list(c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt", "Larson", "Holland", "Paul", "Simu", "Renner"), c(59,71,83,67,65,57,62,92,92,59))
names(student_data) <- c("Student Name", "Exam Score")

print(student_data)

max_score <- max(student_data$`Exam Score`)
cat("Highest score:" ,max_score)

min_score <- min(student_data$`Exam Score`)
cat("Lowest score:", min_score)

avg_score <- mean(student_data$`Exam Score`)
cat("Average score:", avg_score)

max_student <- student_data$`Student Name`[which(student_data$`Exam Score`==max_score)]
cat("Student with highest score:", max_student)

min_student <- student_data$`Student Name`[which(student_data$`Exam Score`==min_score)]
cat("Student with lowest score:", min_student)


# Activity 3
student_data <- list(c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt", "Larson", "Holland", "Paul", "Simu", "Renner"), c(59,71,83,67,65,57,62,92,92,59), c(89,86,65,52,60,67,40,77,90,61))

names(student_data) <- c("Student Name", "Chemistry", "Physics")

print(student_data)

fail_chemistry <- sum(student_data$Chemistry <= 49)
fail_physics <- sum(student_data$Physics <= 49)

sum_fail <- fail_chemistry + fail_physics

min_score_phy <- min(student_data$Physics)
student_min_score_phy <- student_data$`Student Name`[which(student_data$Physics == min_score_phy) ]


min_score_chem <- min(student_data$Chemistry)
student_min_score_chem <- student_data$`Student Name`[which(student_data$Chemistry == min_score_chem) ]

cat("Number of student who fails Chemistry:", fail_chemistry )
cat("Number of student who fails Physics:", fail_physics )
cat("Number of student who fails Physics and Chemistry :", sum_fail)
cat("Lowest score (Physics) : ", student_min_score_phy , ",",min_score_phy )
cat("Lowest score (Chemistry) : ", student_min_score_chem , ",", min_score_chem)

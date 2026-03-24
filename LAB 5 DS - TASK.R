# Activity 1
year <- as.numeric(readline(prompt = "Input year : "))

if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)){ 
  cat(year,"is a leap year")
} else {
  cat(year, "is not a leap year")
}


# Activity 2
num <- as.numeric(readline(prompt = "Input an integer:"))

cube <- num^3

cat("Number is:", num, "and cube of the", num, "is :", cube)


# Activity 3
num <- as.integer(readline(prompt = "Input and integer:"))

if (is.na(num) || num < 0){
  print("Invalid Input")
} else {
  original_num <- num
  sum <- 0
  
  n <- nchar(as.character(num))
  
  while (num > 0){
    digit <- num %% 10 #get last digit
    sum <- sum + digit^n
    num <- num %/% 10
  }
  
  
  if (sum == original_num){
    cat(original_num, "is an Armstrong number.")
  } else {
    cat(original_num, "is not an Armstrong number")
  }
}
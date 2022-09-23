# Part I
students <- c("Abraham", "Beatrice", "Cory", "Dinah", "Eric", "Felicia")

roll_call <- function(class){
  print(Sys.Date())
  # Create a for loop 
 for (name in students) {
   print(name)
 }
}

# Call the function with the student vector as an argument.
roll_call(students)


# Part II
locker_combinations <- function(class){
  # Create the for loop and print the student name and locker combination.
  for (name in students) {
    print(name)
    print(sample(33,3))
  }
  }

# Call the function with the student vector as an argument.
locker_combinations(students)

# Part III
for (student in students){
  # Create a variable (substring)  that holds the second letter for each student.
  second_letter <- substr(student,2,2)
  # Create an if statement to find the names of students where the 
  # second letter that is an "e". 
  if (second_letter == 'e') {
    print(student)
    combination <- sample(33:66,3)
    print(combination)
  }
  
}

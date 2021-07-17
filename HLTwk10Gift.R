# R program to take input from user(name and age), display values.
name <- readline("Enter your name:")
age <- readline("Enter your age:")
hello <-paste("hello", name, "!", "You are", age, "years old")
print(name)
print(age)
print(hello)

ls()

#R program to create a sequence of numbers from 20 to 50
print(seq(20,50))
# mean of numbers from 20 to 60
print(mean(20:60))
#Sum of numbers from 51 to 91
print(sum(51:91))

#R program to create a vector with 10 random integer values 
#between -50 and +50
numbers=c(-50,-40,-30,-20,-10,10,20,30,40,50)
print(numbers)

# alternatively,
V1=sample(-50:50, 10, replace=TRUE)
print(V1)

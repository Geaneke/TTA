#Write an R program to create three vectors a, b, c with 5 integers. 
a<-c(1,2,3,4,5)
b<-c(6,7,8,9,10)
c<-c(11,12,13,14,15)


#Combine the three vectors to become a 3×5 matrix where each column represents a vector. Print the content of the matrix.
d<-cbind(a,b,c)
print(d)


#Plot a graph and label correctly
barplot(d,
        main = "D MATRIX",
        xlab = "VECTORS",
        ylab = "INTEGERS")

#Write a R program to create a Data frames which contain details of 5 employees and display the details.  
#(Name, Age, Gender, Role and Length of service)
Employees = data.frame(Name=c("Joseph Thompson","Anna Brooke","Imelda Jones","Becky Smith","Antony Jacob"),
                       Age=c(32,25,41,48,29),
                       Gender=c("M","F","F","F","M"),
                       Role=c("Agent","Director","Receptionist","Manager","Accountant"),
                       Length_Service=c(5,10,3,7,6))
print(Employees)


#plot a graph using the qplot function.
f <- function() {
  x <- 1:20
  y <- x ^ 2
  qplot(x, y)
  }
f()

#Rstudio visualisation using  ggplot and qplot
library(ggplot2)
presidential
p <-ggplot(presidential, aes(name,party))
p+geom_col()

qplot(x=start,y=name,data=presidential,geom ="point")
  









  


pi<-3.1415
dozen<-12L
print(paste("Type of pi:", typeof(pi)))
print(paste("Type of dozen:", typeof(dozen)))
flag<-T
print(paste("is flag logical:", is.logical(flag)))

info<-list(21,61.2,"lisa", TRUE)
info<-list(age=21, weight=61.2, name="Lisa", female=TRUE)

X<- c(1,2,3,4,5)
Y<- c(21,5,7,9,3)
plot(X,Y,type="o")

airport.codesUK <-list("Birmingham" = "BHX", "London Heathrow" = "LHR",
                       "Bristol" = "BRS", "Manchester" = "MAN")
airport.dubai<-"DBX"
airport.sanfran<-"SFO"
ls()
rm(airport.sanfran)
ls()

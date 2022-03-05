v <- c(2,1,1,1)
b <- c(6,4)
A <- matrix(v, nrow = 2, byrow = TRUE)


#Matrix singular?
if(det(A)!=0){
  solve(A,b)
}

Ab <- cbind(A,b)
write.table(Ab, "sistema") #Output 
read.table("sistema") ->Ab
getwd()
setwd("c:// ")
m<- nrow(Ab)
n<- ncol(Ab)-1
A<-as.matrix(Ab[ ,1:n])
b<-as.vector(Ab[, n+1])

M<- A[ , 1:2]
x<-solve(M,b)

sol<-rep(0,n)
sol[1:2]
J<-rbind(J, c(1,2))
J<-rbind(J, c(1,3))
J<-rbind(J, c(1,4))
J<-rbind(J, c(2,3))
J<-rbind(J, c(2,4))
J<-rbind(J, c(3,4))

for (j in 1:6){
  aux <- J[j, ]
  Mj<-A[, aux]
  print(Mj)
  sol <- rep(0,n)
  sol[aux]<- solve(Mj, b)
}
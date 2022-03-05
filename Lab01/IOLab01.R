
###LAB01####


v <- c(2,1,1,1)
b <- c(6,4)
A <- matrix(v, nrow = 2, byrow = TRUE)
A


#Matrix singular?
if(det(A)!=0){
  solve(A,b)
}



Ab <- cbind(A,b)
#write.table(Ab, "sistema") #Output 
#read.table("sistema") ->Ab
#getwd()
#setwd("c:// ")
Ab
m<- nrow(Ab)
n<- ncol(Ab)-1
A<-as.matrix(Ab[ ,1:n])
b<-as.vector(Ab[, n+1])
#rango(A)= 2 = m < n = 4
#(buscamos soluciones cuyas variables desconocidas son 0)



A=rbind(c(2, 1, 1, 8, 6), c(1, 1, 2, 4, 2))
A
M<- A[ , 1:2]
x<-solve(M,b)
x
sol<-rep(0,n)
sol[1:2] -> x

j <- c(3,4)
sol[j]<- solve(M,b)

J<-rbind(c(1,2),c(1,3), c(1,4), c(2,3), c(2,4), c(3,4))
J
for(j in 1:6){
  aux<-J[j]
  M<- A[,aux]
}
M


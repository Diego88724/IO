###LAB02####

library("gtools")

m <- 2
n <- 4
v <- c(2,1,1,8,1,1,2,4)
b <- c(6,4)
A <- matrix(v, nrow = 2, byrow = TRUE)
AI <- cbind(A, diag(m)) 
print(AI)



calcula_sb <- function(M,J,b){ 
  aux <- M[ , J] 
  solucion <- rep(0, m+n)
  if(det(aux) == 0){ 
    return(F) 
  }
  
  solucion[J] <- solve(aux, b) 
  
  return(solucion) 
}

calcula_sb(AI, c(1,2), b)




ncom <- choose(m+n, m)
combinations(n+m, m) -> C

C


for (i in 1 : nrow(C)) {
  sb <- calcula_sb(AI, C[i, ], b)
  print(sb)
}



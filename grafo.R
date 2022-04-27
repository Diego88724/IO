
#-------------------------------------------
# Gereración de grafos mediante "igraph"
#-------------------------------------------

library("metaheuR")
library("igraph")
library("ggplot2")



set.seed(1)

n <- 12

random.graph.game(n = n , p.or.m = 0.3)-> GRAFO 

plot.igraph(GRAFO)




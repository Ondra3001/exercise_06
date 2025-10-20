## task 1 ----

DoubleDigestProblem <- function(enzyme_A, enzyme_B, combine_AB){
  while (TRUE){
    
    enzyme_A <- sample(enzyme_A)
    enzyme_B <- sample(enzyme_B)
    
    pos_a <- cumsum(enzyme_A)
    pos_b <- cumsum(enzyme_B)
    pos_a <- c(0,pos_a)
    pos_b <- c(0, pos_b)
    
    
    
    pos_comb <- c(pos_a, pos_b)
    #print(pos_comb)
    
    comb_AB <- unique(pos_comb)
    #print(comb_AB)
    
    diff_comb_AB <- diff(sort(comb_AB))
    #print(diff_comb_AB)
    
    sort_comb_AB <- sort(diff_comb_AB)
    #print(sort_comb_AB)
    
    if (identical(sort_comb_AB, combine_AB)){
      print("success")
      print(enzyme_A)
      print(enzyme_B)
      #return(enzyme_A,enzyme_A)
      break
    } 
  }
}




enz_A <- c( 2, 3, 5, 10)
enz_B <- c(3, 7, 10)
enz_comb <- c(1,2,2,5,5,5)


DoubleDigestProblem(enz_A,enz_B,enz_comb)


## task 2 ----

Place <- function(deltaX, X, width){
  if (length(deltaX) == 0){
    return(X)
  }
  
  y <- max(deltaX)
  deltaX <- sort(deltaX)
  
  x5 <- y
  x1 <- x5 - y
  
  
}

deltax <- c(2, 2, 3, 3, 4, 5, 6, 7, 8, 10)
x <- numeric(5)
w <- max(deltax)

print(x)
#Place(deltax, x,w)



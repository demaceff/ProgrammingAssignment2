###############################################################################################
## Function name:  makeCacheMatrix
## Date: 25 Jan 2015     Author: DMAC
###############################################################################################
## This function is designed to create a special "matrix" object that can cache its inverse 
## Computing the inverse of a square matrix can be done with the solve function in R. 
##  A matrix is created and it's inverse is stored (cached) for later use
###############################################################################################
## Invocation:   e.g. > makeCacheMatrix(sample(0:10,4,replace=T),2)
## Input: 'mat' is passed to the function as the parameters of the required matrix
##        'n' is the dimensions of the matrix - it must be square so it is used for row and column
## Output:
###############################################################################################
makeCacheMatrix <- function(mat = numeric(),n) {
    m <- NULL
    set <- function(y) {
      mat <<- y
      ## make a matrix of the vector passed by the call
      dim(mat)<-c(n,n)
      ## invert the matrix and store the result in 'inv'
      inv<-solve(mat)
      return(inv)
      m <- NULL
     } 
}


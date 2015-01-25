###############################################################################################
## Function name:  cacheSolve
## Date: 25 Jan 2015     Author: DMAC
###############################################################################################
## This function is designed to work in conjunction with makeCacheMatrix
## it is called to get the inverse of a matrix BUT ONLY IF the inverse 
## is not already stored in cache
## Input: a matrix 'x' 
## Output: either the cached matrix inverted or do the calculation for it
###############################################################################################
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  inv <- x$getmat()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv) 
  ##  ret<<-inv 
  }
  else {data <- x$get()
    inv <- solve(data, ...)
    x$setmat(inv)
    inv
}}
#### END OF CODE ####
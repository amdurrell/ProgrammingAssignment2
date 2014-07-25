##The following functions cache the inverse of a matrix and check the cache.

##Caches a matrix containing the given matrix and its inverse.
makeCacheMatrix <- function(x = matrix()) {
  #Find inverse
  myInverse <- solve(x)
  #Cache it with x in a matrix
  myCached <<- matrix(cbind(x, myInverse))
  return(myCached)
  
}


## Checks cache before calculating the inverse of matrix x
cacheSolve <- function(x, ...) {
  #Check whether matrix x is identical to cached matrix
  if (x == myCached[1]) {
    myInverse <- myCached[2]}
  #If matrix x is not identical to cached matrix, calculate the inverse
  else {
    myInverse <- solve(x)
  }
  return(myInverse)
}
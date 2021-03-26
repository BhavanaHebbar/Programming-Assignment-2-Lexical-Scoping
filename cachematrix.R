## Caching the Inverse of a Matrix:
## The below functions that are used to create a special object that stores a matrix and caches its inverse.


## The function makeCacheMatrix creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  p <- NULL
  set <- function(z){
    x <<- z 
    p <<- NULL
  }
  get <- function() {x}
  setInverse <- function(perse){
    p <<- inverse
  }
  getInverse <- function(){p} ## get the inverse
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}

## The function cacheSolve computes the inverse of the special "matrix" created by makeCacheMatrix.
## If the inverse has already been calculated ,then it should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
## Return a matrix which is the inverse of 'x'
  p <- x$getInverse()
  if (!is.null(p)){
    message("getting cached data")
    return(p) }
  mat <- x$get()
  p <- solve(val, ...)
  x$setInverse(p)
  p # return the inverse
  }
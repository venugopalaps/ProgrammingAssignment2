## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y             #Transofom the values from y to x to set the cache
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse      
  getinverse <- function() m
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)  # list of funtions 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse() # all the get inverse funtion
  if (!is.null(m)) {    # if the inverser is calulated, then take from the cache
    message("getting cached data")
    return(m)
  }
  data <- x$get()   
  m <- solve(data, ...)
  x$setinverse(m)   # Find the inverse of matrix m
  i
}

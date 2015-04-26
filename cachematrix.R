## makeCacheMatrix basically creates a cached matrix and cacheSolve solves the matrix and retrieves the
## vaule of the solution from the cache depending on whether the matrix was already set with the makeCacheMatrix function

makeCacheMatrix <- function(x = matrix()) {

  m <- NA
  
  ## set sets the value from x into a cached variable. After setting, solve value is set to NA.
  ## If a matrix has been set for the first time, it will return NA as an output to getSolve()
  ## If a matrix is already set, then m takes the solution, and is not NA anymore.
  
  set <- function(y) {
    x <<- y
    m <<- NA
  }
  
  ## get simply retrieves the cached value
  get <- function() x
  
  ## setsolve solves for the inverse of matrix, and sets the value to m
  setSolve <- function(solve) m <<- solve
  
  ## getsolve retrieves the solution.
  getSolve <- function() m
  
  ## This is the list that is returned as a o/p to the makeCacheMatirx function.
  list(set = set, get = get,
       setSolve = setSolve,
       getSolve = getSolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getSolve()                       ## First retrieve solution
  if(!is.na(m)) {                         ## If NA, it means that solution has not been computed before
    message("getting cached data")        ## If not NA, it means that solution has been computed. Simply retrieve from cache.
    return(m)
  }
  data <- x$get()                         ## Next 3 statements are for extracting solutions for first time computations.
  m <- solve(data)                        ## get data, solve and set the solved value. Return the solution.
  x$setSolve(m)
  m
}

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
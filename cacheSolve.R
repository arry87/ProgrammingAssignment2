cacheSolve <- function(x=matrix(), ...) {
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
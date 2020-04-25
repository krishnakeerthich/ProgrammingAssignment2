## Matrix inverse is used for computational purpose to do caching the inverse of matrix 
## functions do

## Creates the speacial function 

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
       set <- function(y) {
              x <<- y
              m <<- NULL
       }
       get <- function() x
       setmean <- function(mean) m <<- mean
       getmean <- function() m
       list(set = set, get = get,
            setmean = setmean,
            getmean = getmean)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m <- x$getmean()
       if(!is.null(m)) {
              message("getting cached data")
              return(m)
       }
       data <- x$get()
       m <- mean(data, ...)
       x$setmean(m)
       m
}

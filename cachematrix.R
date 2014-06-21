## creates a matrix
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
        x <<- y
        m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        
        ## output of 4 values as a list
        list(set = set, get = get,
                setsolve = setsolve,
                getsolve = getsolve)        
}

## invert the above matrix
cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}

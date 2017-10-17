## These functions will cache inverse of a matrix and retrieve the inverse
## from cache if the inverse has been calculated (and matrix hasn't changed)

## creating a special matrix and caching its inverse

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
}
get <- function() x
setreverse <- function(reverse) m <<- reverse
getreverse <- function() m
list(set = set, get = get,
setreverse = setreverse,
getreverse = getreverse)
}


## Computing inverse of matrix returned by MakeCachMatrix or retrieving 
## the inverse from cache if the inverse has been calculated

cacheSolve <- function(x, ...) {
        m <- x$getreverse()
if(!is.null(m)) {
	message("getting cached data")
	return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setreverse(m)       
m
}

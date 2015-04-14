## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function stores a cached matrix and it's inverse.

makeCacheMatrix <- function(x = matrix()) {
		m <- NULL
        	set <- function(y) {
                x <<- y
                m <<- NULL
       	}
        	get <- function() x
        	setinverse <- function(inverse) m <<- inverse
        	getinverse <- function() m
        		list(set = set, get = get,
             	setinverse = setinverse,
             	getinverse = getinverse)

}


## Write a short comment describing this function
## This function either retrieves a cached inverse of a matrix created with makeCacheMatrix or calculates and stores
## the inverse if one hasn't already been created.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

		m <- x$getinverse()
        	if(!is.null(m)) {
                message("getting cached data")
                return(m)
        	}
       	 data <- x$get()
        	m <- solve(data)
       	 x$setinverse(m)
       	 m
}

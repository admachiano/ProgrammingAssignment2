## Put comments here that give an overall description of what your
## functions do

## As far as I can tell, this seems to be almost exactly what is described in the example for the assignment but
## instead of using a vector, I am using a matrix.  Instead of setting and getting the value of a vector, I'm setting
## and getting a matrix.  Also, instead of setting and getting a mean, I'm setting and getting an inverse.  Once the
## function runs, the value will be cached in m.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function()x
        setmatrix <- function(invrs) m <<- invrs
        getmatrix <- function()m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
        

}


## cacheSolve looks to see if the inverse of the matrix stored in m has already been calculated and if not,
## it calculates the inverse of the matrix and prints it out.  If the inverse has already been calculated, the
## function will print it out.

cacheSolve <- function(x, ...) {
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return (m)
        }
        data <- x$get()
        m <- invrs(data, ...)
        x$setmatrix(m)
        m
        ## Return a matrix that is the inverse of 'x'
}

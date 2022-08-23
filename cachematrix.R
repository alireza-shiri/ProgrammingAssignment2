
## two functions that keep track of a matrix's inverse.

## creates a unique matrix object with the ability to store its inverse

makeCacheMatrix <- function(x = matrix()) {
        
        
    ## Set the inverse property's initial value.
    i <- NULL

    ## Technique for setting the matrix
    set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
    }

    ## Technique for getting the matrix
    get <- function() {
        ## Send the matrix back
        m
    }

    ## Approach to setting the matrix's inverse
    setInverse <- function(inverse) {
        i <<- inverse
    }

    ## A technique for obtaining the matrix's inverse
    getInverse <- function() {
        ## Bring back the inverse property.
        i
    }

    ## provide a list of the techniques
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}




cacheSolve <- function(x, ...) {
        
    m <- x$getInverse()

 
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

    ## Retrieve the matrix from our object
    data <- x$get()

    ## Make the inverse calculation through matrix multiplication.
    m <- solve(data) %*% data

    ## Put the object's inverse in place.
    x$setInverse(m)

    ## bring back the matrix
    m

}

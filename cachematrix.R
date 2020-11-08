## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        
        mi <- NULL
        ## set the value of the matrix
        set <- function(y){
                x <<- y
                mi <<- NULL
        }
        ## get the value of the matrix
        get <- functio() x
        
        ## set the value of the inverse matrix
        setInverse <- function(inverse) mi <<- inverse
        ## get the value of the matrix
        getInverse <- function() mi

        ##list to return all methods
        list(set = set, get = get, setInverse = setInverse,
         getInverse = getInverse )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mi <- x$getInverse()
        ## if the inverse has already been calculated
        if(!is.null(mi)){
                message("getting cached data")
                ##return the inverse
                return(mi)
        }
        ##get the matrix from our object
        data <- x$get()
        ##calculate the inverse using matrix multiplication
        mi <- solve(data) %*% data

        ##set the inverse to the object
        x$setInverse(mi)
        
        ## return the inverse
        mi
}



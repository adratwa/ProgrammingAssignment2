## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv<-NULL
    set<- function(y) {
        x<<-y
        inv<<-NULL
    }
    get<- function() x
    setInverse<- function(sM) inv <<- sM
    getInverse<- function() inv
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- s$getInverse()
        if(!is.null(inverse)) {
            message("getting cached data")
            return(inverse)
        }
        data<- x$get()
        inverse<- solve(data)
        x$setInverse(Inverse)
        Inverse
    }

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## steps:
## - set matrix value 
## - get matrix value 
## - set matrix inverse value 
## - get matirx inverse value

makeCacheMatrix <- function(x = matrix()) {
        inv<- NULL
        set<- function(y) {
                x<<- y
                inv<<- NULL
        }
        get<- function() x
        setinverse<- function(inverse) inv<<- inverse
        getinverse<- function() inv
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
## steps:
## - test inverse already computed before
## - if TRUE then dispaly message and return results 
## - if FALSE then dispaly 2 messages, 
##                 compute matrix inverse 
##                 sets the value in cache with call to setinverse func

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data.")
                return(inv)
        } 
        else{
                message("cached data not available yet")
                message("solving for data")
        }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv        
}


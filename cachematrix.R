## Put comments here that give an overall description of what your
## functions do

## create a object which is able to cache inverse matrix

makeCacheMatrix <- function( x = matrix() ) {

m <- NULL

# set the value of the matrix
set <- function( y ) {
x <<- y
m <<- NULL
}

# get the value of the matrix
get <- function() {x}

# set the value of the inverse matrix
setSolve <- function(y) {m <<- y}

# get the value of the inverse matrix
getSolve <- function() {m}

# Return
list(set=set,get=get,setSolve=setSolve,getSolve=getSolve)
}


## This function calculate the inverse matrix of the object created with makeCacheMatrix

cacheSolve <- function(x, ...) {

# get the cached inverse matrix store in x
m <- x$getSolve()

# if the cached inverse matrix is not null, return the cached value
if(!is.null(m)){
message("getting cached data")
return(m)}

# otherwise, we get the matrix 
data<-x$get()

# and compute the inverse matirx 
m <- solve(data, ... )

# store the inverse matrix in the cache
x$setSolve(m)

# return the inverse matrix
m
}

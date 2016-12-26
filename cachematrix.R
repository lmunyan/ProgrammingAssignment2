## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function will create a matrix that is able to cache its inverse
makeCacheMatrix <- function(x = matrix()) {
	inv<- NULL
	set <- function(y){
	x <<- y
	inv <<- NULL
	}
	get= function() x
	setInv <- function(inverse) inv <<- inverse
	getInv <- function() inv
	list(set = set, get = get, setInv = setInv, getInv = getInv)
	}


## Write a short comment describing this function
## This function checks to see if the inverse has been calculated earlier and if it has will return the cached value
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getInv()
	if(!is.null(inv)){
	message("getting cached data")
	return(inv)
	}
	my.data= x$get()
	inv <- solve(my.data, ...)
	x$setInv(inv)
	return(inv)
}

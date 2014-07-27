## Creating a list of codes that make a function to set and get the value of a matrix, then to set and get the value of the matrix inverse 

## The following function creates a special matrix object that will cache its inverse

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-function(y){
x<<-y
m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<-solve
getmatrix<-function() m
list(set=set, get=get,
setmatrix=setmatrix,
getmatrix=getmatrix)
}

## the following code will compute the inverse of the matrix defined above (to be returned by the function makeCacheMatrix above)

cacheSolve <- function(x, ...) {
m<-x$getmatrix()
if(!is.null(m)){
message("getting cached data")
return(m)
}
matrix<-x$get
m<-solve(matrix, ...)
x$setmatrix(m)
m
}

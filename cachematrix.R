#function to create an matrix
makeCacheMatrix <- function(x = matrix())
{
        i = NULL
        set <- function(y)#initializtion
        {
                x <<- y
                i <<- NULL
        }
        get <- function()#returning the matrix
        {       x
        }
        setinverse <- function(inverse)#setting the inverse 
                i <<- inverse
        getinverse <- function()#returning the inverse 
                i
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}

cacheinverse <- function(x,...)
{
        i = x$getinverse()#retreiving the inverse
        if(!is.null(i))#checking whether inverse is already calculated
        {        message("getting cached inverse matrix")
                 return(i)
        }
        d=x$get()#retreiving the matrix
        i=solve(d)#finding the inverse if inverse not cached
        x$setinverse(i)#caching the inverse
        i
}

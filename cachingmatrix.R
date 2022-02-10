###### assignment 2  ########
###write a pair of functions to cache the inverse of a matrix



makecachematrix<- function(m= matrix()){
  
  inv<- NULL                                         ###started by making my matrix and setting the inverse as NULL                                  
  
  set<- function(t){                                 ### set the value of the vector        
    m<<- t
    inv<<- NULL
  }
  get<- function() m                                        ###get the value of the vector 
  setinverse<- function(inverse) inv <<- inverse             ### used to set the value of the inverse
  getinverse<- function () inv                                 #### get the value of the inverse
  
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)     ## the return in a list 
  
}

cachesolve<- function(m, ...){         ####gets cache data
  
  inv<- m$getinverse()                     
  
  if(!is.null(inv)){                         ###step checks whether the inverse is null 
    message("getting cached data")
    return(inv)                            ###find the return as the inverse value
  }
  x<- m$get()                
  
  inv<- solve (data, ...)
  
  m$setinverse(inv)             ### calculates inverse value
  
  inv
                         ### returns the inverse matrix
}




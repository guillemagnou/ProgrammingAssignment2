
x <- matrix(rnorm(10000),c(100,100))
m <- makeCacheMatrix(x)
t <- Sys.time()
mm <- cacheSolve(m)
print(Sys.time()-t)
t <- Sys.time()
mm <- cacheSolve(m)
print(Sys.time()-t)

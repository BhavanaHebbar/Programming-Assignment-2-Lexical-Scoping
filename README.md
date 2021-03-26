# Programming-Assignment-2-Lexical-Scoping
Programming Assignment 2: Lexical Scoping

Assignment: Caching the Inverse of a Matrix
Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than computing it repeatedly.
Assignment is to write a pair of functions that cache the inverse of a matrix.

Write the following functions:

makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.
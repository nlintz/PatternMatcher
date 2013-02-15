#lang racket
#|
key-in-hash
Nathan Lintz
This module finds out if a key is in a has table
|#

(provide key-in-hash? key-in-hash)

(define (key-in-hash? assoc-hash k) ;checks if a certain k is the a dictionary, returns a boolean
  (cond
    [(member k (hash-keys assoc-hash)) #t]
    [else #f]
    )
  )
 
(define (key-in-hash assoc-hash k)  ;checks if a certain k is the a dictionary, returns the key
  (cond
    [(member k (hash-keys assoc-hash)) k]
    [else #f]
    )
  )
  
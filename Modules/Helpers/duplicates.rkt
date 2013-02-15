#lang racket
#|
duplicates?
Nathan Lintz
This module matches for duplicates in a list, its used by parse
|#

(provide duplicates?)

(define (duplicates? associativeList used) ;checks if a key is already in the associative array
  (cond
    [(equal? (length (remove-duplicates associativeList)) (length (remove-duplicates used))) #f] ;compares the length of a list of used keys to teh number of unique entries in the dict
    [else #t]
    )
  )
#lang racket
#|
search-for pattern
Nathan Lintz
This module allows you to search a
dictionary for patterns
|#

(require "../InputParse/parse.rkt")

(provide search-for-pattern find-pattern)

(define (search-for-pattern patterns input)
  (ormap (lambda (arg) (parse input arg)) patterns) ;returns the associative list for a given pattern
  )

(define (find-pattern patterns input) ;returns the pattern if it matches an input
  (cond
    [(= (length patterns) 0) #f]
    [(pair? (parse input (car patterns) )) (car patterns)] ;tests if the input matches a pattern
    [else (find-pattern (cdr patterns) input)]
      )
  )
#lang racket
#|
pattern-match
Nathan Lintz
This helper looks through a pattern and finds there =var or *var occurs
|#

(provide equalMatch? wildcardMatch?)

(define (first-char sym)
  (substring (symbol->string sym) 0 1)
  )

(define (equalMatch? lst)
  (if (pair? lst) (if (equal? (first-char (car lst)) "=") #t #f ) #f)
  )

(define (wildcardMatch? lst)
  (if (pair? lst) (if (equal? (first-char (car lst)) "*") #t #f ) #f)
  )
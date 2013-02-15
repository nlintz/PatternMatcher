#lang racket
#|
output-gen
Nathan Lintz
This module takes an association list and an response. It fills the variables
in with the associated values
EX: (output-gen '((x lynn)) '(it is nice to meet you x)) -> it is nice to meet you lynn
|#


(provide output-gen)

(require "../Helpers/key-in-hash.rkt")

(define (output-gen assoc response)
  (define assoc-hash (make-hash assoc)) ;make a hash from the input->variable
  (define (output-gen-tail response ans)
    (cond
      [(equal? (length response) 0) ans]
      [(key-in-hash? assoc-hash (car response)) 
       
       (output-gen-tail (cdr response) (append ans (hash-ref assoc-hash (car response))))] ;if the input is in the hash, you build teh response out of the variables in the associative list
      
      [(output-gen-tail (cdr response) (append ans (list (car response)) )  )]
      )
    )
  (output-gen-tail response '())
  )
  
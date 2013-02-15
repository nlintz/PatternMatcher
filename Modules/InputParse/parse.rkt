#lang racket
#|
parse
Nathan Lintz
This module matches for a single variable and returns a dictionary if
theres a match
EX: (parse '(hide yo kids hide yo wife) '(hide yo (=x) hide yo (=y)))
|#
(provide parse)
(require "../Helpers/duplicates.rkt")
(require "../Helpers/pattern-match.rkt")

(define (parse input pattern)
  (define (parse-tail input pattern ans used) ;inner function for tail call
    
    (cond
      [(not (= (length input) (length pattern))) #f] ;if the pattern and input length differ, there won't be a match
      [(duplicates? ans used) #f]
      [(= (length pattern) 0) ans] ;after recursing we are done
      [(equalMatch? (car pattern)) (parse-tail (cdr input) (cdr pattern) (cons (list (string->symbol (substring (symbol->string (caar pattern)) 1)) (car input)) ans) (cons (string->symbol (substring (symbol->string (caar pattern)) 1)) used))] ;TODO Comment this beast + break it down
      [(equal? (car pattern) (car input))
       (parse-tail (cdr input) (cdr pattern) ans used)] ;keep recursing if there are two words that are teh same
      [else #f] ;patterns don't match
      )
    
    )
  
  (cond
    [(equal? input pattern) #t] ; test if the two inputs are completely the same without vars
    [(equal? (parse-tail input pattern '() '()) #f) #f]
    [(reverse (remove-duplicates (parse-tail input pattern '() '())))] ; you reverse the list so that the input order matches the output order
    [else #f]
  )
)


#lang racket

#|
string to list
Nathan Lintz
This module takes a string as an input and converts it to a list of symbols
|#

(provide string_to_list)

(define (string_to_list input) ;converts the string from read-line to a list
  (map (lambda (s) (string->symbol s)) (string-split input))
  )
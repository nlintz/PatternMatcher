#lang racket

#|
prompt
Nathan Lintz
This module generates the input prompt for the user
|#

(provide prompt) ;export module
(require "../Helpers/string_to_list.rkt")
(define (prompt)
  (string_to_list (read-line)) ;read a string input from the command prompt
  )


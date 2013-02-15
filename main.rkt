#lang racket
#|
main
Nathan Lintz
This is the main of my program. Its where the magic begins

JUST IN CASE
A robot may not injure a human being or, through inaction, allow a human being to come to harm.
A robot must obey the orders given to it by human beings, except where such orders would conflict with the First Law.
A robot must protect its own existence as long as such protection does not conflict with the First or Second Laws.

|#

(provide main)

(require "Modules/InputParse/prompt.rkt")
(require "Modules/InputParse/parse.rkt")
(require "Modules/OutputGen/output-gen.rkt")
(require "Modules/StaticRules/input-pattern.rkt")
(require "Modules/Helpers/key-in-hash.rkt")
(require "Modules/Helpers/search-for-pattern.rkt")

(define input-hash (hash-input-pattern)) ;a mapping of inputs to output patterns
(define (main)
  
  (define input (prompt))

  (cond
    [(equal? input '(quit))(display "Good Bye")] ;quit
    [(key-in-hash? input-hash input) ; if the key is in the hash then we know its a static match and return the response
    (display (hash-ref input-hash input ))
    (display "\n")
    (main) ;continue the inputs
    ]
    [(pair? (search-for-pattern (patterns) input)); if there is a pattern that matches the input, return the generated response strng 
     (display (output-gen (search-for-pattern (patterns) input) (hash-ref input-hash (find-pattern (patterns) input))) )
     (display "\n")
     (main)
     ]
    [else (display "why do you think that?"); default reponse 
          (display "\n")
          (main)]

    )
  )
    
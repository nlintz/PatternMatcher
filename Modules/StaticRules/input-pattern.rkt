#lang racket
#|
input-pattern
Nathan Lintz
This modulereturns a hash-map of inputs
to patterns
Patterns from http://dave-reed.com/csc550.S04/Code/eliza.scm
|#

(provide hash-input-pattern patterns)

(define (hash-input-pattern)
  (define input_pattern_dict (make-hash))
  (hash-set! input_pattern_dict '(hello) '(hi))
  (hash-set! input_pattern_dict '(how are you) '(thank you I am well))
  (hash-set! input_pattern_dict '(my name is (=x)) '(it is nice to meet you x))
  (hash-set! input_pattern_dict '(i like (=x) and (=y)) '(do you prefer x or y))
  (hash-set! input_pattern_dict '((=x) computers (=y)) '(do computers worry you))
  (hash-set! input_pattern_dict '((=x) name (=y)) '(i am not interested in names))
  (hash-set! input_pattern_dict '((=x) sorry (=y)) '(no need to be sorry))
  (hash-set! input_pattern_dict '((=x) i remember (=y)) '(do you often think of y))
  (hash-set! input_pattern_dict '((=x) do you remember (=y)) '(do you often think of y))
  
  (hash-set! input_pattern_dict '((=x) i remember (=y)) '(do you often think of y))
  (hash-set! input_pattern_dict '((=x) do you remember (=y)) '(did you think i would forget y))
  (hash-set! input_pattern_dict '((=x) if (=y)) '(do you really think it is likely that y))
  (hash-set! input_pattern_dict '((=x) i dreamt (=y)) '(have you ever fantasized y while you were awake))
  (hash-set! input_pattern_dict '((=x) i dreamed (=y)) '(have you ever fantasized y while you were awake))
  (hash-set! input_pattern_dict '((=x) dream (=y)) '(what does this dream suggest to you))
  (hash-set! input_pattern_dict '((=x) my mother (=y)) '(tell me more about your family))
  (hash-set! input_pattern_dict '((=x) my father (=y)) '(does he influence you strongly))
  (hash-set! input_pattern_dict '(i want (=y)) '(why do you want y))
  (hash-set! input_pattern_dict '(i was (=y)) '(do you think you were y))
  (hash-set! input_pattern_dict '(i am (=x)) '(in what way are you x))
  (hash-set! input_pattern_dict '(am i (=x)) '(i'm not sure, are you x))
  (hash-set! input_pattern_dict '(you are (=x)) '(what makes you think x))
  (hash-set! input_pattern_dict '(i feel (=x)) '(tell me more about your feelings))
  (hash-set! input_pattern_dict '(what) '(english, do you speak it))
  (hash-set! input_pattern_dict '(were you (=x)) '(perhaps i was x))
  (hash-set! input_pattern_dict '(are you (=x)) '(i dont think i am x))
  (hash-set! input_pattern_dict '(i want to (=x)) '(do you think x is a good idea?))
  (hash-set! input_pattern_dict '(i love (=x)) '(careful now, does x love you too?))
  (hash-set! input_pattern_dict '(i cant (=x)) '(why can't you x))
  (hash-set! input_pattern_dict '(im (=x)) '(why are you so x))

  
  input_pattern_dict
  )

(define (patterns)
  (hash-keys (hash-input-pattern))
  )
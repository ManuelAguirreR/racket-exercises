#lang racket/base

(require rackunit)

; PROBLEM:
; 
; DESIGN function that consumes a string and determines whether its length is
; less than 5.  Follow the HtDF recipe and leave behind commented out versions 
; of the stub and template.
; 


;;String -> Boolean  ;signature
;;Cosumes a string and evaluate if length is less than 5. ;porpuse

;(define (less5? str) true) ;stub

; (define (less5? str)       ;template
;   (... str))

(define (less5? str)
   (< (string-length str) 5))

;;unitTests
(check-equal? (less5? "hello") #f "Equal than 5" )
(check-equal? (less5? "horses") #f "More than 5" )
(check-equal? (less5? "sun") #t "Less than 5" )




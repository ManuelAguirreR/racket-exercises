;Beginning Student
;; less-than-five-starter.rkt
; 
; PROBLEM:
; 
; DESIGN function that consumes a string and determines whether its length is
; less than 5.  Follow the HtDF recipe and leave behind commented out versions 
; of the stub and template.
; 


;;String -> Boolean  ;signature
;;Cosumes a string and evaluate if length is less than 5. ;porpuse

;;unitTest
(check-expect (less5? "hello") false)
(check-expect (less5? "horses") false)
(check-expect (less5? "sun") true)

;(define (less5? str) true) ;stub

; (define (less5? str)       ;template
;   (... str))

(define (less5? str)
   (< (string-length str) 5))



#lang racket/base

(require rackunit)
(require 2htdp/image)

; PROBLEM:
; 
; Use the How to Design Functions (HtDF) recipe to design a function that consumes an image, 
; and appears to put a box around it. Note that you can do this by creating an "outline" 
; rectangle that is bigger than the image, and then using overlay to put it on top of the image. 
; For example:
; 
; (boxify (ellipse 60 30 "solid" "red")) should produce .
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Leave behind commented out versions of the stub and template.
; 

;;Image -> Image
;;Create an rectangle container bigger thant the given image. 
;;Box is 5 pixels wider and taller than given image.

;(check-equal? (boxify img) img) 

;(define (boxify img) -> template
;   (... img))

(define (boxify img) 
    (overlay (rectangle (+ (image-width img) 5) 
                        (+ (image-height img) 5) 
                        "outline" 
                        "black")
              img ))

;unitTest
(check-equal? (boxify (triangle 40 "solid" "aquamarine")) 
              (overlay 
                    (rectangle 45 40 "outline" "black") 
                    (triangle 40 "solid" "aquamarine") ))

(check-equal? (boxify (circle 20 "solid" "blue")) 
              (overlay 
                    (rectangle 45 45 "outline" "black") 
                    (circle 20 "solid" "blue") ))


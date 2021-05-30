#lang sicp
(define (max a b c)
  (cond ((and (< a b) (< a c)) (+ b c))
    ((and (< b a) (< b c)) (+ a c))
    (else (+ a b))))
(max 5 2 8)
(max 1 2 5)
(max 5 9 3)
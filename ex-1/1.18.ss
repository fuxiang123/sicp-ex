#lang sicp
(define (double a) ; 1.17是用递归写这个过程，就不用做了
  (+ a a))
(define (halve a)
  (/ a 2))
(define (even? n) ; 检测是否为偶数
  (= (remainder n 2) 0))
(define (multi a b n)
  (cond ((= b 0) n)
        ((even? b) (multi (double a) (halve b) n))
        (else (multi a (- b 1) (+ a n)))))
(define (fast-multi a b)
  (multi a b 0))

(fast-multi 5 10)
(fast-multi 8 9)
(fast-multi 43 16)
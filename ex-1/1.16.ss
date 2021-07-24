#lang sicp
(define (fast-expt b n)
  (expt b n 1))
(define (even? n) ; 检测是否为偶数
  (= (remainder n 2) 0))
(define (expt b n a)
  (cond ((= n 0) a)
        ((even? n) (expt (* b b) (/ n 2) a))
        (else (expt b (- n 1) (* a b)))))
(fast-expt 3 3) ; 27
(fast-expt 4 5) ; 

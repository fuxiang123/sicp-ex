(define (f n) ; 递归过程
  {cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 1)))
                 (* 3 (f (- n 3)))))})

(define (f2 n) ; 迭代过程
  (f-iter 0 1 2 0 n))
(define (f-iter a b c i n)
  (cond ((= i n) a)
        (else (f-iter b ; new a = b
                      c ; new b = c
                      (+ (* 3 a) ;new c = 3a + 2b + c
                         (* 2 b)
                         c)
                      (+ i 1)
                      n))))
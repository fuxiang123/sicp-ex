(define (pascal-angle row col)
  (cond ((= col 1) 1)
        ((= row col) 1)
        (else (+ (pascal-angle (- row 1) (- col 1))
                 (pascal-angle (- row 1) col)))))

(pascal-angle 5 3)
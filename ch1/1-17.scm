; enhanced multiplication - O(log n), recursive

(define (double x)
  (* x 2)
)

(define (halve x)
  (/ x 2)
)

(define (even? n)
  (= (remainder n 2) 0)
)

(define (times a b)
  (if (= b 0)
    0
    (+ a (times a (- b 1)))
  )
)

(define (etimes a b)
  (cond
    ((= b 0) 0)
    ((even? b) (etimes (double a) (halve b)))
    (else (+ a (etimes a (- b 1))))
  )
)

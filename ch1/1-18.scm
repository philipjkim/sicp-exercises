; enhanced multiplication - O(log n), iterative

(define (double x)
  (* x 2)
)

(define (halve x)
  (/ x 2)
)

(define (even? n)
  (= (remainder n 2) 0)
)

(define (etimes2 a b)
  (etimes-iter a b 0)
)

(define (etimes-iter a b val)
  (cond
    ((= b 0) val)
    ((even? b) (etimes-iter (double a) (halve b) val))
    (else (etimes-iter a (- b 1) (+ val a)))
  )
)

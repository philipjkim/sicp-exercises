(define (new-if predicate then-clause else-clause)
  (cond
    (predicate then-clause)
    (else else-clause)
  )
)

(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001)
)

(define (improve guess x)
  (average guess (/ x guess))
)

(define (average x y)
  (/ (+ x y) 2)
)

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)
  )
)

(define (sqrt-iter2 guess x)
  ; embed new-if procedure due to unbound error
  (define (new-if predicate then-clause else-clause)
  (cond
    (predicate then-clause)
    (else else-clause)
    )
  )

  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)
  )
)

(define (even? n)
  (= (remainder n 2) 0)
)

; fexpr (recursive process)
(define (fexpr b n)
  (cond
    ((= n 0) 1)
    ((even? n) (square (fexpr b (/ n 2))))
    (else (* b (fexpr b (- n 1))))
  )
)

; fexpi (iterative process)
(define (fexpi b n)
  (fexpi-iter b n 1)
)

(define (fexpi-iter b n a)
  (cond
    ((= n 0) a)
    ((even? n) (fexpi-iter (square b) (/ n 2) a))
    (else (fexpi-iter b (- n 1) (* a b)))
  )
)

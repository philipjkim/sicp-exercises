; Ackermann functions
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))
               )
        )
  )
)

; f(x) = 2*x
(define (f n) (A 0 n))
; g(x) = 2^n
(define (g n) (A 1 n))
; h(x) = 2^(2^(n-1))
(define (h n) (A 2 n))
; k(x) = 5*(n^2)
(define (k n) (* 5 n n))

(A 1 10)
(A 2 4)
(A 3 3)

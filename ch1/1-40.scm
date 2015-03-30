; x^3 + a*x^2 + b*x +c

(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x)) dx)
  )
)

(define dx 0.0000001)

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))
  )
)

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess)
)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) dx)
  )
  (define (try guess)
    (
      let (
        (next (f guess))
      )
      (if (close-enough? guess next)
        next
        (try next)
      )
    )
  )
  (try first-guess)
)

(define (cube x)
  (* x x x)
)

(define (cubic a b c)
  (lambda (x)
    (+ (cube x) (* a (square x)) (* b x) c)
  )
)

(newtons-method (cubic 3 -2.4 6) 1)

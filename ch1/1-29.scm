; Integral

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b)
      )
  )
)

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx
  )
)

(define (cube x) (* x x x))

(integral cube 0 1 0.01)
(integral cube 0 1 0.001)

; Simpson's rule

(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (y k) (f (+ a (* k h))))
  (define (inc c) (+ c 1))
  (define (new-f num)
    (cond
      ((= num 0) (* 1.0 (y 0)))
      ((= num n) (* 1.0 (y num)))
      ((even? num) (* 2.0 (y num)))
      (else (* 4.0 (y num)))
    )
  )
  (* (sum new-f 0 inc n)
    (/ h 3.0)
  )
)

(simpson cube 0 1 1)
(simpson cube 0 1 10)
(simpson cube 0 1 100)
(simpson cube 0 1 1000)

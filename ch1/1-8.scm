; improve4cbrt(guess, x) = (x/guess^2 + guess*2) / 3

(define (cube x)
  (* (square x) x)
)

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.00001)
)

(define (improve guess x)
  (/
    (+
      (/ x (* guess guess))
      (* 2 guess)
    )
    3
  )
)

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (cbrt-iter (improve guess x) x)
  )
)

(cbrt-iter 1.0 8)
(cbrt-iter 1.0 27)
(cbrt-iter 1.0 64)

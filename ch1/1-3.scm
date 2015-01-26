; asks us to define a procedure that takes three numbers as arguments
; and returns the sum of the squares of the two larger numbers.

(define
  (max a b)
  (if (> a b)
    a
    b
  )
)

(define
  (pow a)
  (* a a)
)

(define
  (mix a b c)
  (define max1 (max a b))
  (define max2 (max b c))
  (define max3 (max c a))
  (if (= max1 max2)
    (+ (pow max1) (pow max3))
    (+ (pow max1) (pow max2))
  )
)

; tests
(mix 1 2 3)
(mix 1 3 2)
(mix 2 1 3)
(mix 2 3 1)
(mix 3 1 2)
(mix 3 2 1)

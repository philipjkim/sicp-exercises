; negative rational numbers

(define (make-rat n d) (cons n d))
(define (numer x) (car x))
(define (denom x) (cdr x))

(define (add-rat x y)
  (make-rat
    (+ (* (numer x) (denom y)) (* (numer y) (denom x)))
    (* (denom x) (denom y))
  )
)

(define (sub-rat x y)
  (make-rat
    (- (* (numer x) (denom y)) (* (numer y) (denom x)))
    (* (denom x) (denom y))
  )
)

(define (mul-rat x y)
  (make-rat
    (* (numer x) (numer y))
    (* (denom x) (denom y))
  )
)

(define (div-rat x y)
  (make-rat
    (* (numer x) (denom y))
    (* (denom x) (numer y))
  )
)

(define (equal-rat? x y)
  (= (* (numer x) (denom y)) (* (numer y) (denom x)))
)

(define (print-rat x)
  (display (numer x))
  (display "/")
  (display (denom x))
)

(define one-half (make-rat 1 2))
(define one-third (make-rat 1 3))

(print-rat (add-rat one-half one-third))
(print-rat (sub-rat one-half one-third))
(print-rat (mul-rat one-half one-third))
(print-rat (div-rat one-half one-third))
(print-rat (add-rat one-third one-third))

; pascal triangle
(define (pt row col)
  (cond ((or (= col 0) (= col row)) 1)
        ((or (< col 0) (< row 0) (> col row)) -1) ; error
        (else (+ (pt (- row 1) (- col 1)) (pt (- row 1) col)))
  )
)

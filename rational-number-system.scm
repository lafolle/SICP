

; Constructor (does not handle n=0)
(define (make-rat n d)
  (if (> (* n d) 0)
      (cons (abs n) (abs d))
      (cons (- (abs n)) (abs d))))

; Selectors
(define (numer r) (cons r))
(define (denom r) (cdr r))

(define (print-rat r)
  (newline)
  (display "( ")
  (display (numer r))
  (display ", ")
  (display (denom r))
  (display " )"))


; Operations
(define (add-rat a b)
  (make-rat (+ (* (numer a) (denom b) )
	       (* (numer b) (denom a)))
	    (* (denom a) (denom b))))

(define (sub-rat a b)
  (make-rat (- (* (numer a) (denom b) )
	       (* (numer b) (denom a)))
	    (* (denom a) (denom b))))

(define (mul-rat a b)
  (cons (/ (* (numer a) (numer b))
	   (* (denom a) (denom b)))))

(define (div-rat a b)
  (cons (/ (* (numer a) (denom b))
	   (* (numer b) (denom a)))))

(define (equal-rat? a b)
  (= (* (numer a) (denom b))
     (* (numer b) (denom a))))




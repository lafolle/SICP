




(define nil '())

(define (extract f z)
  (define (g v)
    (cond ((null? v) nil)
	  ((f (car v)) (cons (car v) (g (cdr v))))
	  (else (g (cdr v)))))
  (g z))

(define (same-parity x . y)
  (if (even? x)
      (cons x (extract even? y))
      (cons x (extract odd? y))))



(same-parity 2 3 4 5 6 7)
(same-parity 1 2 3 4 5 6 7)




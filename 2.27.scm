(define (deep-reverse items)
  (define (iter things ans)
    (if (null? things)
	ans
	(iter (cdr things)
	      (cons (if (pair? (car things))
			(deep-reverse (car things))
			(car things)) ans))))
  (iter items nil))
;Value: deep-reverse


(define x (list (list 1 2) (list 3 4)))
;Value: x

x
;Value 23: ((1 2) (3 4))

(deep-reverse x)
;Value 24: ((4 3) (2 1))

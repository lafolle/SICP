
(define (square-list items)
  (if (null? items)
      nil
      (cons (* (car items) (car items))
	    (square-list (cdr items)))))
;Value: square-list

(square-list (list 1 2 3))
;Value 16: (1 4 9)

(define (square-list items)
  (map (lambda (x) (* x x)) items))
;Value: square-list

(square-list (list 1 2 3))
;Value 17: (1 4 9)


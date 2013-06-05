(define (for-each proc items)
  (if (not (null? items))
      (begin (proc (car items))
	     (for-each proc (cdr items)))))
;Value: for-each

(for-each (lambda (x) (newline) (display x))
	  (list 1 2 3))



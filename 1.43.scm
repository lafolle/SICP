; compose from 1.42 is used

(define (repeated f n)
  (lambda (x)
    (define (g new-procedure k)
      (if (= k n)
	  new-procedure
	  (g (compose f new-procedure) (inc k))))
    ((g f 1) x)))
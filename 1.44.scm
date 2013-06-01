; Smoothing

(define dx 0.000001)

(define (smooth f)
  (lambda (x)
    (/ (+ (f (- x dx)) (f x) (f (+ x dx))))))


(define (n-fold-smooth n)
  (repeated smooth n))

((smooth (smooth square)) 4)
;Value: 15.999999999998668

(((n-fold-smooth 2) square) 4)
;Value: 15.999999999998668

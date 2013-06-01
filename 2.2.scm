; Constructors
(define (make-segment sp ep)(cons sp ep))
(define (make-point x y) (cons x y))

; Selectors
(define (start-segment seg) (car seg))
(define (end-segment seg) (cdr seg))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (midpoint-segment seg)
  (cons (/ (+ (x-point (start-segment seg))
	      (x-point (end-segment seg)))
	   2)
	(/ (+ (y-point (start-segment seg))
	      (y-point (end-segment seg)))
	   2)))

(define (print p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))
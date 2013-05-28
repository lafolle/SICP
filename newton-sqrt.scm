(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2.0))

(define newton-sqrt-tolerance 0.000001)

(define (good-enough? guess x)
  (if (< (abs (- (square guess) x))
	 newton-sqrt-tolerance)
      #t #f))

(define (improve-guess guess x)
  (average guess (/ x guess)))


(define (sqrt-iter x guess)
  (if (good-enough? guess x)
      guess
      (sqrt-iter x (improve-guess guess x))))


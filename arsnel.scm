
;; Increment operator (procedure)
(define (inc x) (+ 1 x))

;; Decrement operator
(define (dec x) (- x 1))


; Recursive process Recursize procedure
(define (factorial x)
  (if (= x 1)
      1
      (* x (factorial (- x 1)))))

; Iterative process Recursize procedure

(define (square x) (* x x))


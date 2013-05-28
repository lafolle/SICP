
;; recursive process
(define (fact-rec x)
  (if (= x 1)
      1
      (* x (fact-rec (- x 1)))))



;; iterative process
(define (fact-iter counter ans len)
  (if (= counter len)
      ans
      (fact-iter (+ counter 1)
		 (* ans (+ counter 1))
		 len)))


;; main factorial procedure
(define (factorial x)
  (fact-iter 1 1 x))



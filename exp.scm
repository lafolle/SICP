


; Recursive process
(define (exp x n)
  (if (= n 1)
      x
      (* x (exp x (- n 1)))))


; Iterative process
(define (iter-exp x n ans)
  (if (= n 0)
      ans
      (iter-exp x
		(- n 1)
		(* x ans))))


; To be pushed in arsnel.scm after fast exp is written






; Recursive process
(define (list-len-rec lst)
  (if (null? (cdr lst))
      1
      (+ 1 (list-len-rec (cdr lst)))))


; Iterative process
(define (list-len-iter len lst)
  (if (null? (cdr lst))
      (+ len 1)
      (list-len-iter (+ len 1) (cdr lst))))

; Returns length of list
(define (length l)
  (list-len-iter 0 l))

; Returns nth item in list l
(define (list-ref l n)
  (define len (length l)
  (define (ref k lst)
    (if (= k n)
	(car lst)
	(ref (inc k) (cdr lst))))
  (if (or (= len n)
	  (> n len)
	  (< n 0))
      (display "List index out of range")
      (ref 0 l)))
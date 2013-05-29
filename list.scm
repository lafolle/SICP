
; Recursive process
(define (list-len-rec lst)
  (if (null? lst)
      0
      (+ 1 (list-len-rec (cdr lst)))))


; Iterative process
(define (list-len-iter len lst)
  (if (null? lst)
      len
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

; Returns list of all number between a and b, including a and b  
(define (list-interval a b)
  (define (create-interval a b interval)
    (if (> a b)
	interval
	(create-interval (inc a) b (append interval (cons a '()) ))))
  (if (> a b)
      (display "Lower limit is greater than upper limit")
      (create-interval a b '())))  
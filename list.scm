
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
(define (list-ref n l)
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


; Returns reverse of a given list
(define (reverse-list lst)
  (define (rlist newlist oldlist)
    (if (null? oldlist)
	newlist
	(rlist (cons (car oldlist) newlist)
	       (cdr oldlist))))
  (rlist '() lst))]

; List min-max procedures
(define (list-max ls)
  (eval (cons 'max ls) user-initial-environment))

(define (list-min ls)
  (eval (cons 'min ls) user-initial-environment))

; Extract elements from index x to y-1
(define (slice x y ls)
  (define (f a newlist)
    (if (= a y)
	newlist
	(f (+ a 1) (append newlist
			   (cons (list-ref a ls) '())))))
  (f x '()))

; Update kth element of ls by m
(define (update-list k m ls)
  (append (append (slice 0 k ls) (cons m '()))
	  (slice (+ k 1) (length ls) ls)))
				      





(define (change? x xhold)
	(< x xhold))

(define (swap x y)
	(list y x))
	
(define (how-many-smaller b a)
	(define counter (range b))
	(foldl (lambda (nxt init) (if (= nxt a)
				      (+ 3 init) (+ 4 init)))
	       0 counter))

(define (compare a b)
	(if (>= a b) 0 1))

(define (b-to-win a1 b1 ahold bhold)
	(cond
		[(= a1 12) 0]
		[(= b1 12) 1]
		[else
			(begin
				(match-define (list a2 b2) (if (change? b1 bhold) (swap a1 b1) (list a1 b1)))
				(define a3 (if (change? a2 ahold) -1 a2))
				(if (not (= a3 -1))
				    (compare a3 b2)
				    (exact->inexact (/ (+ (smaller b2 a2) (if (< a2 b2) 4 0)) 50))))]))
				    
(define (b-to-win-at-78 a1 b1)
	(b-to-win a1 b1 7 8))

(match-define (list A1 B1) (list (range 13) (range 13)))

;(map b-to-win-at-78 A1 B1)
		
(for/list ([j (in-range 13)])
 (for/list ([i (in-range 13)])
  (b-to-win-at-78 i j)))
		     	 
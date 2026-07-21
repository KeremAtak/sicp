(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(f 5)

(define (g n)
  (define (g-iter a b c count) 
    (if (= count 0)
	a
	(g-iter b c (+ c (* 2 b) (* 3 a)) (- count 1))))
  (g-iter 0 1 2 n))

(g 5)

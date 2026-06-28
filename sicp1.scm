; 1.1.1-1.1.5
(define (square x)
  (* x x) (* x x))

(define (additive x) (+ x 2))

(define size 2)
; cx ce eval
size
(* 5 size)

(define pi 3.14159)
(define radius 10)
(* pi (* radius radius))

(define (square x) (* x x))

(square 21)

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 2 3)

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 5)

; 1.1.6

(define (abs x)
  (cond ((> x 0) x)
	((= x 0) 0)
	((< x 0) (- x))))

(abs 5)
(abs 0)
(abs -4)

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(abs 5)
(abs 0)
(abs -5)

(define (>= x y) (or (> x y) (= x y)))

(>= 5 0)
(>= 5 5)
(>= 0 4)

; e1.1

10
10

(+ 5 3 4)
12

(- 9 1)
8

(/ 6 2)
3

(+ (* 2 4) (- 4 6))
6

(define a 3)
; #<unspecified>

(define b (+ a 1))
; #<unspecified>

(+ a b (* a b))
19

(= a b)
#f

(if (and (> b a) (< b (* a b)))
    b
    a)
4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
16

(+ 2 (if (> b a) b a))
6

(* (cond ((> a b) a)
	 ((< a b) b)
	 (else -1))
   (+ a 1))
16

; e1.2

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

; e1.3

(define (smallest-number x y z)
  (and (<= x y) (<= x z)))

(define (largest-square-sums x y z)
  (cond ((smallest-number x y z) (sum-of-squares y z))
	((smallest-number y x z) (sum-of-squares x z))
	((smallest-number z x y) (sum-of-squares x y))))

; e1.4

; if b is greater than zero, sum a and b. Otherwise substract a with b.

; e1.5

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

;; Endless recursion with applicative-order, subexpressions are evaluated first.
;; With normal-order subexpression of (p) would not be evaluated as it's not necessary with arguments 0 and (p).

; 1.1.7

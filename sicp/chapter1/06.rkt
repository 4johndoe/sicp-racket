#lang sicp

(#%require rackunit)

; √x = такое y, что y ≥ 0 и y2 = x
; (define (sqrt x)
;     (the y (and (>= y 0)
;                 (= (square y) x))))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                    x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(define (square x) (* x x))
(check-equal? (square 3) 9)

(define sqrt9 (sqrt 9))
(check-equal? sqrt9 3.00009155413138)

(define sqrt1000 (square (sqrt 1000)))
(check-equal? sqrt1000 1000.000369924366)

; new if
(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else-clause)))

(define newif1 (new-if (= 2 3) 0 5))
(check-equal? newif1 5)

(define newif2 (new-if (= 1 1) 0 5))
(check-equal? newif2 0)
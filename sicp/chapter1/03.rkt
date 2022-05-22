#lang sicp

(#%require rackunit)

(define (square x)
      (* x x))

(check-equal? (square 3) 9)

(define (sum-of-squares x y)
      (+ (square x) (square y)))

(check-equal? (sum-of-squares 2 3) 13)

(define (max x y) (if (> x y) x y))

(check-equal? (max 4 5) 5)
(check-equal? (max 6 2) 6)

(define (sum-two-maximum-numbers a b c)
      (cond ((and (< a b) (< a c)) (sum-of-squares b c))
            ((and (< b a) (< b c)) (sum-of-squares a c))
            (else (sum-of-squares a b))))

(check-equal? (sum-two-maximum-numbers 4 3 1) 25)
(check-equal? (sum-two-maximum-numbers 4 1 3) 25)
(check-equal? (sum-two-maximum-numbers 1 3 4) 25)
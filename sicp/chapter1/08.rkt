#lang sicp

(#%require rackunit)

(define (double x) (+ x x))
(check-equal? (double 3) 6)

(define (square x)
    (exp (double (log x))))
(check-equal? (square 4) 15.999999999999998)

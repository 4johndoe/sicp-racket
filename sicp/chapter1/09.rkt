#lang sicp

(#%require rackunit)

(define (first a b) 
    (+ a b)
        (if (= a 0)
            b
            (inc (+ (dec a) b))))

(check-equal? (first 1 2) 3)

(define (second a b)
    (+ a b)
        (if (= a 0)
            b
            (+ (dec a) (inc b))))

(check-equal? (second 2 3) 5)
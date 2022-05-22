#lang sicp

(#%require rackunit)

(define a1 10)

(check-equal? a1 10)

(define b1 (+ 5 3 4))

(check-equal? b1 12)

(define c1 (- 9 1))

(check-equal? c1 8)

(define d1 (/ 6 2))

(check-equal? d1 3)

(define e1 (+ (* 2 4) ( - 4 6)))

(check-equal? e1 6)

(define a 3)

(check-equal? a 3)

(define b (+ a 1))

(check-equal? b 4)

(define bb (+ a b (* a b)))

(check-equal? bb 19)

(define bbb (= a b))

(check-equal? bbb false)

(define bbbb (if (and (> b a) (< b (* a b)))
                b
                a))

(check-equal? bbbb b)

(define b5 (cond ((= a 4) 6)
                ((= b 4) (+ 6 7 a))
                (else 25)))

(check-equal? b5 16)

(define b6 (+ 2 (if (> b a) b a)))

(check-equal? b6 (+ 2 b))

(define b7 (* (cond ((> a b) a)
                    ((< a b) b)
                    (else -1))
                (+ a 1)))

(check-equal? b7 (* b (+ a 1)))
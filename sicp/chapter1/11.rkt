#lang sicp

(#%require rackunit)

(define (fib n)
    (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                (fib (- n 2))))))

(check-equal? (fib 0) 0)
(check-equal? (fib 1) 1)
(check-equal? (fib 2) 1)
(check-equal? (fib 3) 2)

(define (fib2 n)
    (fib-iter 1 0 n))

(define (fib-iter a b count)
    (if (= count 0)
        b
        (fib-iter (+ a b) a (- count 1))))

(check-equal? (fib2 0) 0)
(check-equal? (fib2 1) 1)
(check-equal? (fib2 2) 1)
(check-equal? (fib2 3) 2)

;; count-change

(define (count-change amount)
    (cc amount 5))

(define (cc amount kinds-of-coins)
    (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+    (cc amount
                        (- kinds-of-coins 1))
                    (cc (- amount
                            (first-denomination kinds-of-coins))
                        kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
    (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)
        (else 0)))

(define change100 (count-change 100))
(check-equal? change100 292)

;;  f(n) = n, если n < 3, и f(n) = f(n−1)+f(n−2)+f(n−3), если n ≥ 3
(define (foo n)
    (if (< n 3)
        n
        (+ (foo (- n 1))
            (foo (- n 2))
            (foo (- n 3)))))

(define foo4 (foo 4))
(check-equal? foo4 6)

; (define (foo2 n)
;     (foo-iter 1 0 n))

; (define (foo-iter start acc count)
;     ())
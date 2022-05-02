#lang racket
(define tarai
  (lambda (x y z)
    (if (<= x y)
        y
        (tarai (tarai (- x 1) y z)
               (tarai (- y 1) z x)
               (tarai (- z 1) x y)))))

(tarai 15 8 0)
;;15
;;racket tarai.rkt  8.12s user 0.04s system 98% cpu 8.297 total


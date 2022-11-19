#lang racket

(module+ test
  (require rackunit))

(define/contract (atob p1 amount p2)
  (-> number? number? number? number?)
  (/ (* p1 amount)
     p2)
  )

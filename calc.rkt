#lang racket

(module+ test
  (require rackunit))

(define (price total)
  (/ total 35672000.)
  )

(define (premium total)
  (- (/ 1.59 (price total))
     1)
  )

#lang racket

(module+ test
  (require rackunit))

;; 1. 人们面临权衡取舍
;; 社会面临的权衡取舍
;; efficiency: 社会能从稀缺资源中得到的最大利益
;; equality: 如何分配资源的成果
;; -> List Symbol List
(define/contract (trade-off candidates choice)
  (-> list? symbol? list?)
  (remove choice candidates eq?)
  )

(module+ test
  (check-equal? (trade-off '(study play reading) 'play)
                '(study reading))
  )

;; 2. 机会成本，某种东西的成本是为了得到它所放弃的东西
;; (opportunity-cost alternatives) -> list?
;; alternatives : list?
(define/contract (opportunity-cost alternatives)
  (-> list? list?)
  alternatives
  )

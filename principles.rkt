#lang racket

(module+ test
  (require rackunit))

;; 人们如何做出决策
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

;; 3. 理性人考虑边际量
(define/contract (marginal-change marginal-benefit marginal-cost)
  (-> number? number? number?)
  (- marginal-benefit marginal-cost)
  )

;; 4. 人们会对激励(incentive)做出反应

;; 人们如何相互交易
;; 5. 贸易可以使每个人的状况都变得更好
;; 6. 市场通常是组织经济活动的一种好方法
;; 7. 政府有时可以改善市场结果

;; 整体经济如何运行
;; 8. 一国的生活水平(productivity)取决于它生产物品与劳务的能力
;; 9. 当政府发行了过多货币时，物价上升
;; 10. 社会面临通货膨胀与失业之间的短期权衡取舍

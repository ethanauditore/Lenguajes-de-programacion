#lang plai
;; Predicado que nos dice si un numero es negativo
;; neg?: number -> Boolean
;(define (neg? a) ... )
(define (neg? a)
  (cond
    [(< a 0) #t]
    [else(> a 0)#f]))

;; Procedimiento que nos devuelve el valor absoluto de un número
;; absoluto: number -> number
;(define (absoluto n) ... )

(define (absoluto n)
  (cond
    [(< n 0) (* -1 n)]
    [(= n 0) 0]
    [(> n 0) n]))

;; Procedimiento que eleva el numero a, a la potencia b
;; potencia: number number
;(define (potencia a b) ...)



(define (potencia a b)
  (cond
    [(= b 0) 1]
    [(= b 1) a]
    [(< b 0) (/ 1 (potencia a (* b -1))) ]
    [else
        (* a (potencia a (- b 1)))]
    )
  )



;; suma-cuadrados: number -> number
;(define (suma-cuadrados n) ...)

(define (suma-cuadrados n)
  (/ (* n (+ n 1) (+ (* 2 n) 1)) 6))

;; Predicado que nos dice si un numero m es divisor de otro numero n
;; divisor?: number number -> number
;(define (divisor? m n) ... )

(define (divisor? m n)
  (cond
    [(=(modulo n m)0) #t]
    [else
         #f]))
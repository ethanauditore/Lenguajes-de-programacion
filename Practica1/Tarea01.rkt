#lang plai

;; Predicado que nos dice si un numero es negativo
;; neg?: number -> Boolean
;(define (neg? a) ... )

;; esPar?: numner -> boolean
(define (esPar? n)
  (= (modulo n 2) 0))

;; Procedimiento que nos devuelve el valor absoluto de un número
;; absoluto: number -> number
;(define (absoluto n) ... )

;; Procedimiento que calcula el area de un cono de base circular
;; area-cono: number number -> number
(define (area-cono d g)
  (define r (/ d 2))
  (+ (* pi r g) (* pi (expt r 2))))

;; Procedimiento que eleva el numero a, a la potencia b
;; potencia: number number
;(define (potencia a b) ...)

;; menores: number -> (listof number)
(define (menores n)
  (cond
    [(= n 0) (list 0)]
    [else (append (menores (sub1 n)) (list n))]))

;; suma-cuadrados: number -> number
;(define (suma-cuadrados n) ...)

;; suma-cuadradosR: number -> number
(define (suma-cuadradosR n)
  (cond
    [(= n 0) 0]
    [else (+ (expt n 2) (suma-cuadradosR (sub1 n)))]))

;; Predicado que nos dice si un numero m es divisor de otro numero n
;; divisor?: number number -> number
;(define (divisor? m n) ... )

;; Procedimiento que determina el día de la semana correspondiente
;; diaSemana: number -> string
(define (diaSemana n)
  (define m (modulo n 7))
  (cond
    [(= m 0) "Lunes"]
    [(= m 1) "Martes"]
    [(= m 2) "Miercoles"]
    [(= m 3) "Jueves"]
    [(= m 4) "Viernes"]
    [(= m 5) "Sabado"]
    [(= m 6) "Domingo"]))

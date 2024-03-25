#|
  This file contains Scheme code that is used by Amina to generate the report.
|#
(use-modules (srfi srfi-1))

; Accepts a string that may be null and returns the empty string when the value is null.
(define (nullable-string s)
  (if (null? s) "" s))

; Accepts three arguments: f, a function that accepts two arguments; init, a
; value; and xs, a list; and returns `f x0 (f x1 (... (f xn init)))`.
(define (fold f init xs)
  (if (null? xs) init
    (f (car xs) (fold f init (cdr xs)))))

; Accepts two arguments: n, an integer; and xs, a list; and returns the first n
; values from xs.
(define (take n xs) (list-head xs n))

(define number-regexp (make-regexp "^[0-9]{1,3}(,[0-9]{3})*(.[0-9]*)?$"))

(define (number-string? s) (regexp-exec number-regexp s))

; Accepts a string that represents a number such as 1,234.56 and returns the
; corresponding number as a Scheme numerical value.
(define (parse-number s)
  (if (regexp-exec number-regexp s)
    (string->number (list->string (filter (lambda (c) (not (char=? #\, c))) (string->list s))))
    (error "[comma-string->number] Error: invalid string format.")))

(define (pad-zeroes-left n s)
  (let*
    [(prefix-len (- n (string-length s)))
     (prefix
       (if (<= prefix-len 0) ""
         (make-string prefix-len #\0)))]
    (string-append prefix s)))

; Accepts two arguments: prec, an integer; and x, a number; and returns a string
; that represents x with precision prec.
(define number->str
  (case-lambda
    [(prec x)
     (letrec*
       [(y (inexact->exact (if (< x 0) (ceiling x) (floor x))))
        (prefix (if (< x 0) "-" ""))
        (y0 (abs y))
        (x0 (abs x))
        (aux (lambda (x)
          (let
           [(suffix (number->string (inexact->exact (modulo x 1000))))
             (q (quotient x 1000))]
            (if (> (abs q) 0)
              (string-append (aux q) "," suffix)
              suffix))))]
       (string-append prefix
         (if (or (= x0 y0) (= prec 0))
           (aux y0)
           (string-append (aux y0) "."
             (pad-zeroes-left prec
               (number->string (inexact->exact
                 (round (* (- x0 y0) (expt 10 prec))))))))))]
    [(x) (number->str 4 x)]))

; Accepts two arguments: prec, an optional integer; and x, either a
; number or the string "Infinity"; and returns a string that represents
; x with the given precision. If prec is omitted, this function displays
; x with four digits after the decimal.
(define enumber->str
  (case-lambda
    ([prec x]
     (case x
       ((+inf.0) "$\\infty$")
       ((-inf.0) "$-\\infty$")
       (else (number->str prec x))))
    ([x] (enumber->str 4 x))))

; Accepts two strings: ref and x; and bolds x iff x equals ref.
(define (bold-if-eq ref x)
  (if (string=? ref x)
    (string-append "**" x "**")
    x))

; Accepts two arguments: an optional keyword and a list of strings ss, and
; returns "s0, s1, ..., keyword sn." For example: "first, second, and third." If
; the list only has two values, this function returns "s0 keyword s1." For
; example: "first and second."
(define comma-delimited
  (case-lambda
    [(keyword ss)
     (case (length ss)
      [(0) ""]
      [(1) (car ss)]
      [(2) (string-append (car ss) " " keyword " " (cadr ss))]
      [(3) (string-append (car ss) ", " (cadr ss) ", " keyword " " (caddr ss))]
      [else (string-append (car ss) ", " (comma-delimited (cdr ss)))])]
    [(ss) (comma-delimited "and" ss)]))

; Accepts a weight of evidence measured in "nats" to the weight of
; evidence measured in the convience units of "aminas." 0.75 nats equals
; 1 amina.
(define (nats->aminas x) (/ x 0.75))
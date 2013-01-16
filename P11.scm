(define (pack lst)
  (cond ((null? lst) lst)
        ((null? (cdr lst)) (list lst))
        (else (let ((packed-lst (pack (cdr lst))))
                (if (eq? (car lst) (caar packed-lst))
                    (cons 
                     (cons
                      (car lst)
                      (car packed-lst)
                      )
                     (cdr packed-lst)
                     )
                    (cons
                     (list (car lst))
                     packed-lst
                     )
                    )
                )
              )
        )
  )

(define (process lst)
    (if (= (length lst) 1)
        (car lst)
        (list (length lst) (car lst))
    )
)

(define (encode lst)
    (map process (pack lst))
)
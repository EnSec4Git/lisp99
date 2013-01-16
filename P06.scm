(define (is-palindrome list)
    (define (palindrome-rec lst rev-lst)
        (if (null? lst)
            #t
            (if (= (car rev-lst) (car lst))
                (palindrome-rec (cdr lst) (cdr rev-lst))
                #f
            )
        )
    )
    (palindrome-rec
      list (if (null? list) list (reverse list))
    )
)
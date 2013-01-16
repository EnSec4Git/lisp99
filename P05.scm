(define (my-reverse list)
    (define (rev-rec list rev)
        (if (null? list) rev
            (rev-rec (cdr list) (cons (car list) rev))
        )
    )
    (rev-rec list '())
)

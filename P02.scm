(define (but-last-list list)
    (if (null? (cdr (cdr list)))
        (car list)
        (but-last-list (cdr list)))
    )
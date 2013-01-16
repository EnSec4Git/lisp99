(define (compress list)
    (if (or (null? list) (null? (cdr list))) list
        (if (= (car list) (cadr list))
            (compress (cdr list))
            (cons (car list) (compress (cdr list)))
        )
    )
)
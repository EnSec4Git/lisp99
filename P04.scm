(define (my-length list)
    (if (null? list) 0
        (+ (my-length (cdr list)) 1)
    )
)
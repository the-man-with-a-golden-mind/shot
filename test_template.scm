(define *path* (cons "../"  *path*))

(import (otus lisp))
(import (shot template))

(define test-nested-div
  (display "Testing nested div...")
  (let ((result (DIV '() (list (H1 '() "1") (DIV '() (list (H1 '() "2")))))))
    (assert result ===> "<div><h1>1</h1><div><h1>2</h1></div></div>")
    (display "ok\n")))


(define tests
 (list 
  test-nested-div
  ))

(map (lambda (test) test) tests)

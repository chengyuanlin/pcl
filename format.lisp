(format t "~$" pi)

(format t "~5$" pi)

(format t "~:d" 12345)
(format t "~@d" 12345)

;;;~A ~S

;;;~D ~X ~B ~O ~R

(format t "~12d" 12345)
(format t "~12,'*d" 12345)

(format t "~4,'0d-~2,'0d-~2,'0d" 2015 5 26)

(format t "~20,'#,',,4:d" 1234567889)

(format t "~2R" 101)
(defvar lsf (format nil "~2R" 101))
(format t "~10R" lsf)

(format t "~[cero~;uno~;dos~]" 0)
(format t "~[cero~;uno~;dos~]" 1)

(defparameter *list-etc*
  "~#[NONE~;~a~;~a and ~a~:;~a, ~a~]~#[~; and ~a~:;, ~a, etc~]")
(format t *list-etc*)
(format t *list-etc* 'a)
(format t *list-etc* 'a 'b)
(format t *list-etc* 'a 'b 'c)
(format t *list-etc* 'a 'b 'c 'd)

;;;nil->FAIL, T->PASS
(format t "~:[FAIL~;PASS~]" test-result)

(format t "~@[x = ~a ~]~@[y = ~a~]" 10 20)
(format t "~@[x = ~a ~]~@[y = ~a~]" 10 nil)
(format t "~@[x = ~a ~]~@[y = ~a~]" nil 20)
(format t "~@[x = ~a ~]~@[y = ~a~]" nil nil)

(format t "~{~a~^, ~}" '(1 2 3))
(format t "~@{~a~^, ~}" 1 2 3)

(defparameter *english-list*
  "~{~#[<empty>~;~a~;~a and ~a~:;~@{~a~#[~; and ~:;, ~]~}~]~:}")
(format t *english-list* '())
(format t *english-list* '(1))
(format t *english-list* '(1 2))
(format t *english-list* '(1 2 3))
(format t *english-list* '(1 2 3 4))

(format t "~*~d" 1 2)
(format t "~r ~:*(~d)" 1)

(format t "I saw ~[no~:;~:*~r~] el~:*~[ves~;f~:;ves~]" 10)
(format t "I saw ~[no~;~r~]" 10)

(defvar *l* '(6 5 4 3 2 7 6 5 4 3 2))

(defun calc-checkdigit (s)
  (let ((result (mod (apply #'+ (mapcar #'* s *l*)) 11)))
    (if (or (= result 0) (= result 1))
        0
        (- 11 result))))

(defun main ()
  (let ((str (concatenate 'list (read-line)))
        (l (list nil)))
    (dolist (s str)
      (push (parse-integer (string s)) l))
    (if (= 12 (length str))
        (print (calc-checkdigit (cdr (reverse (cdr l)))))
        (print (calc-checkdigit (cdr (reverse l)))))))

(main)

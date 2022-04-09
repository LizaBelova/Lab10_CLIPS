;function of belonging 
(deffunction age (?x)
	(if (<= ?x 25) then 1
	else
   	(/ 1 (+ 1 (** (/ (- ?x 25) 5) 2) ) ) )   
)

;function of age category
(deffunction result (?M)
	(if (= ?M 1)  then 
		(printout t "Young " "(" ?M ")" crlf)  
	else
	(if (< ?M 0.03) then 
		(printout t "Old " "(" ?M ")" crlf)
	else
     		(printout t "Middle-aged " "(" ?M ")" crlf) ) ) 
)

(defrule category
=>
(printout t "Input age (1 to 100):" crlf)
(printout t "Age: x = ")
(bind ?x (read)) 
(bind ?M  (age ?x))
(printout t "Answer: ")
(bind ?ans (result ?M))
)
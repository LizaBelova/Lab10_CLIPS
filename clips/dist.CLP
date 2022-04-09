(deffunction distance (?x1 ?x2 ?y1 ?y2)
   (sqrt (+ (** (- ?x2 ?x1) 2) (** (- ?y2 ?y1) 2)))  
)

(defrule segment
=>
(printout t "x1 = ")
(bind ?x1 (read))
(printout t "y1 = ")
(bind ?y1 (read))
(printout t "x2 = ")
(bind ?x2 (read))
(printout t "y2 = ") 
(bind ?y2 (read))                       
(bind ?d (distance ?x1 ?x2 ?y1 ?y2))          
(printout t "d = " ?d crlf) ) 
(set-logic LIA)
(synth-fun next ((x Int) (v Int) ) Int
	((Start Int)  (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 1
				 (ite StartBool Start Start)))

	(Var Int (
				 1
				 2
				 5
				 4
				 0
				 9
				 3
			 x
			 v
				(abs Var)						
			 	(+ Var Var)						
			 	(- Var Var)						
			 	(* Var Var)))

	 (StartBool Bool (
					 (> Var Var)						
					 (>= Var Var)						
					 (< Var Var)						
					 (<= Var Var)						
					 (= Var Var)						
					 (and StartBool StartBool)			
					 (or  StartBool StartBool)				
					 (not StartBool)))))

(constraint (= (next 5 0 ) 1))
(constraint (= (next (- 3) 7 ) 0))
(constraint (= (next (- 2) 9 ) 0))
(constraint (= (next (- 3) 6 ) 0))
(constraint (= (next 4 2 ) 1))
(constraint (= (next 4 5 ) 1))
(constraint (= (next 1 9 ) 0))
(constraint (= (next (- 1) 3 ) 0))
(constraint (= (next 0 1 ) 0))
(constraint (= (next (- 3) 5 ) 0))
(constraint (= (next (- 2) 5 ) 0))
(constraint (= (next (- 2) 2 ) 0))
(constraint (= (next (- 1) 6 ) 0))
(constraint (= (next 5 8 ) 1))
(constraint (= (next 4 8 ) 1))
(constraint (= (next 1 6 ) 0))
(constraint (= (next 2 1 ) 0))
(constraint (= (next 1 1 ) 0))
(constraint (= (next 2 9 ) 0))
(constraint (= (next 5 7 ) 1))
(constraint (= (next 4 0 ) 1))
(constraint (= (next 2 6 ) 0))
(constraint (= (next 5 9 ) 1))

(check-synth)

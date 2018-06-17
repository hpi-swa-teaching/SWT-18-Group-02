accessing
table
	^ table ifNil: [table:= Matrix
		rows: self suggestion size + self maxMistakes asInteger 
		columns: self suggestion size]
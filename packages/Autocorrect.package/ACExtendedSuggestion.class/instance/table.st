accessing
table
	^ table ifNil: [table:= Matrix
		rows: self suggestion size + self maxMistakes
		columns: self suggestion size]
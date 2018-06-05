suggestionCalculation
calculateForNewStatement
	
	self suggestions do: [:each |
		((each key at: 1) isUppercase or: [each key = 'self'] or: [each key = 'super']) ifFalse:[
			each value: each value + self contextImportance]].
	self suggestions reSort.
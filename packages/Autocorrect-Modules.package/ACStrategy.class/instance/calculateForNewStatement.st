suggestionCalculation
calculateForNewStatement
	
	self suggestions do: [:each |
		((each suggestion at: 1) isUppercase or: [each suggestion = 'self'] or: [each suggestion = 'super']) ifFalse:[
			each faults: each faults + self contextImportance]].
	self suggestions reSort.
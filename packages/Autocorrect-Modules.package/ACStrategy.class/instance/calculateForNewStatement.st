suggestionCalculation
calculateForNewStatement
	self calculateSuggestionsFromVars.
	self suggestions do: [:each |
		(each suggestion first isUppercase 
		or: [each suggestion = 'self'] 
		or: [each suggestion = 'super']
		or: [self checkIfLocalVarOrArg: (each suggestion)]) ifFalse:[
			each faults: each faults + self contextImportance]].
	self suggestions reSort.
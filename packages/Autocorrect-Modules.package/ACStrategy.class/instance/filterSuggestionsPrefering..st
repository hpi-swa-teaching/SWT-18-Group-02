suggestionCalculation
filterSuggestionsPrefering: aCollection
	
	self suggestions do: [:each |
		(aCollection includes: each suggestion) ifFalse:[
			each faults: each faults + self contextImportance]].
	self suggestions reSort.
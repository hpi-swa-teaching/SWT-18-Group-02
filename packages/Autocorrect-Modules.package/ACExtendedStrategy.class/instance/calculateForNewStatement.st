suggestionCalculation
calculateForNewStatement
	self addFirst: 2000 classesWithContextFaults: 0.
	self addFirst: 1000 methodsWithContextFaults: self contextImportance.
	self addSpecialSuggestionsWithFaults: 0
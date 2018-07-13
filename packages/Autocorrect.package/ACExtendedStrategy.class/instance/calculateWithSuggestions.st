suggestionCalculation
calculateWithSuggestions
	|entry list|
	list:= self context calculatePossibleSuggestions.
	list do:[:symbol |
		entry:= self list default getEntryFor: symbol asString.
		self suggestions at: symbol asString put: (ACExtendedSuggestion
				suggestion: entry contents
				contextFaults: 0
				date: entry date
				maxMistakes: self maxMistakes)].
	self addFirst: ((2200 - list size / 3) asInteger max: 0) classesWithContextFaults: self contextImportance.
	self addFirst: ((2200 - list size *2 / 3) asInteger max: 0) methodsWithContextFaults: self contextImportance 
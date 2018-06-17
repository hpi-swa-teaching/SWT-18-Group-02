as yet unclassified
calculateWithSuggestions
	|entry|
	context calculateAllPossibleSuggestions do:[:string |
		entry:= self list default getEntryFor: string.
		self suggestions at: string put: (ACExtendedSuggestion
				suggestion: entry contents
				contextFaults: 0
				date: entry date
				maxMistakes: self maxMistakes)].
	self addFirst: 500 classesWithContextFaults: self contextImportance.
	self addFirst: 1000 methodsWithContextFaults: self contextImportance 
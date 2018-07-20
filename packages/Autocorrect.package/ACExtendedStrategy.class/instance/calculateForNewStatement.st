suggestionCalculation
calculateForNewStatement
	self addFirst: self numberClassesToUse classesWithContextFaults: 0.
	self addFirst: self numberMethodsToUse methodsWithContextFaults: self contextImportance 
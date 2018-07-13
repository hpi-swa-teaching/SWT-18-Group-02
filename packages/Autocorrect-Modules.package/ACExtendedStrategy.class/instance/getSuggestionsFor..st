suggestionCalculation
getSuggestionsFor: aString

	self updateTableFor: aString.
	self calculateSuggestions.
	^ self suggestions asSortedCollection first: 20
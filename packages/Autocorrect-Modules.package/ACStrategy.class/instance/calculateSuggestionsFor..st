suggestionCalculation
calculateSuggestionsFor: aString

	requested := aString.
	self calculateSuggestions.
	^ self suggestions
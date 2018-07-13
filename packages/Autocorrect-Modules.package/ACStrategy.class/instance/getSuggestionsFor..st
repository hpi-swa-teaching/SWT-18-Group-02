suggestionCalculation
getSuggestionsFor: aString

	self requested: aString.
	self calculateSuggestions.
	self checkContext.
	^ self suggestions
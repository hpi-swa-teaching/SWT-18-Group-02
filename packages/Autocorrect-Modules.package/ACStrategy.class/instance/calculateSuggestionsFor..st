suggestionCalculation
calculateSuggestionsFor: aString
	self requested: aString.
	self calculateSuggestions.
	
	^ self suggestions
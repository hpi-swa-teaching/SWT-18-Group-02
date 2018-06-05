as yet unclassified
getSuggestionsFor: aString

	requested := aString.
	self calculateSuggestions.
	self checkContext.
	^ self suggestions
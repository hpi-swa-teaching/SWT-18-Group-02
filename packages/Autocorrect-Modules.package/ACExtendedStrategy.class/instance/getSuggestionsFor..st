as yet unclassified
getSuggestionsFor: aString

	self updateTableFor: aString.
	self calculateSuggestions.
	^ self suggestions asSortedCollection
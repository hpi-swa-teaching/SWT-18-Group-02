as yet unclassified
getSuggestionsFor: aString
	(self canUseOldSuggestionsFor: aString) 
		ifTrue:[self calculateFastSuggestionsFor: aString]
		ifFalse:[self suggestions: (self strategy getSuggestionsFor: aString)].
	self lastString: aString.
	self fillSuggestions.
	^ self suggestions
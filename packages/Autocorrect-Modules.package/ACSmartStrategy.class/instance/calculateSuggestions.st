as yet unclassified
calculateSuggestions
	(self canUseOldSuggestionsFor: requested) 
		ifTrue:[self calculateFastSuggestionsFor: requested]
		ifFalse:[self suggestions: (self strategy calculateSuggestionsFor: requested)].
	self lastString: requested.
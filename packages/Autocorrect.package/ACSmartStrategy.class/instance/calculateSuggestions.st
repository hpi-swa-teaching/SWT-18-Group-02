suggestionCalculation
calculateSuggestions
	(self canUseOldSuggestionsFor: self requested) 
		ifTrue:[self calculateFastSuggestionsFor: self requested]
		ifFalse:[self suggestions: (self strategy calculateSuggestionsFor: self requested)].
	self lastString: self requested.
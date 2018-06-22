suggestionCalculation
calculateWithSuggestions
	|possibleSuggestions|
	
	possibleSuggestions := self context calculatePossibleSuggestions.
	possibleSuggestions ifNotNil: [self filterSuggestionsPrefering: possibleSuggestions]
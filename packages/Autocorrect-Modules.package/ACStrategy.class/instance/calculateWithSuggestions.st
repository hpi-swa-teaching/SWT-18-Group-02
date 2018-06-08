suggestionCalculation
calculateWithSuggestions
	|possibleSuggestions|
	
	possibleSuggestions := context calculatePossibleSuggestions.
	possibleSuggestions ifNotNil: [self filterSuggestionsPrefering: possibleSuggestions]
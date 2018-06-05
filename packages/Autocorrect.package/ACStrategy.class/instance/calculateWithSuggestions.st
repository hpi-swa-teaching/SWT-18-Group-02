suggestionCalculation
calculateWithSuggestions
	|possibleSuggestions|
	
	possibleSuggestions := context calculatePossibleSuggestions.
	possibleSuggestions ifNotNil: [self calculateSuggestionsPreferablyFrom: possibleSuggestions]
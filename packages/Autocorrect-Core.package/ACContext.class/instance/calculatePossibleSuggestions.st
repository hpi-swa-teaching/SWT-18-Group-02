as yet unclassified
calculatePossibleSuggestions
	|possibleSuggestions excludedClasses|
	
	possibleSuggestions := OrderedCollection new.
	excludedClasses := Object withAllSuperclasses.
	possibleSuggestions addAll: ((receiverClass allSelectorsForCompletionWithout: excludedClasses)
						collect: [:each | ECSelectorEntry contents: each type: #selector]).
						
	^ possibleSuggestions
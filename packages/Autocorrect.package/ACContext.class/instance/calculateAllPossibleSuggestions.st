as yet unclassified
calculateAllPossibleSuggestions
	|possibleSuggestions excludedClasses|
	
	possibleSuggestions := OrderedCollection new.
	(({#cascade . #object . #class} asOrderedCollection includes: self receiverType) 
		and: [self receiverClass notNil])
		ifTrue: [	
			excludedClasses := Object withAllSuperclasses.
			possibleSuggestions addAll: (self receiverClass allSelectorsForCompletionWithout: excludedClasses)].
		^ possibleSuggestions
			
		 
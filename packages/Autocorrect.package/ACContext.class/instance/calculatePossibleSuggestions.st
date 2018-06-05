as yet unclassified
calculatePossibleSuggestions
	|possibleSuggestions excludedClasses|
	
	(({#cascade . #object . #class} asOrderedCollection includes: receiverType) 
		and: [receiverClass notNil])
		ifTrue: [	possibleSuggestions := OrderedCollection new.
			excludedClasses := Object withAllSuperclasses.
			possibleSuggestions addAll: ((receiverClass allSelectorsForCompletionWithout: excludedClasses)
						collect: [:each | ECSelectorEntry contents: each type: #selector])].
						
	^ possibleSuggestions
as yet unclassified
calculateAllPossibleSuggestions
	|possibleSuggestions|
	
	(({#cascade . #object . #class} asOrderedCollection includes: receiverType) 
		and: [receiverClass notNil])
		ifTrue: [	possibleSuggestions := receiverClass allSelectorsForCompletionWithout: {}].
	^ possibleSuggestions
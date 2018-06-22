as yet unclassified
calculateAllPossibleSuggestions
	|possibleSuggestions|
	
	possibleSuggestions := OrderedCollection new.
	(({#cascade . #object . #class} asOrderedCollection includes: receiverType) 
		and: [receiverClass notNil])
		ifTrue: [	possibleSuggestions := receiverClass allSelectorsForCompletionWithout: {}].
	^ possibleSuggestions
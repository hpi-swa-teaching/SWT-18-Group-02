as yet unclassified
calculatePossibleSuggestions
	|possibleSuggestions excludedClasses allSelectorsOfReceiver upperThreshold lowerThreshold|
	
	(({#cascade . #object . #class} asOrderedCollection includes: receiverType) 
		and: [receiverClass notNil])
		ifTrue: [	possibleSuggestions := OrderedCollection new.
			excludedClasses := Object withAllSuperclasses.
			allSelectorsOfReceiver := receiverClass allSelectorsForCompletionWithout: excludedClasses.
		"we want to not have to check against every possible selector for objects like Morph, so we trim the suggestions down a bit"
			(allSelectorsOfReceiver size <= 150) 
				ifTrue: [possibleSuggestions addAll: allSelectorsOfReceiver]
				ifFalse: [
					lowerThreshold := 2.
					(allSelectorsOfReceiver size <= 300) 
						ifTrue: [upperThreshold := 9]
						ifFalse: [upperThreshold := 7].
					allSelectorsOfReceiver do: [:each |
						((each size <= ((self completionToken) size + upperThreshold)) 
							and: [each size >= ((self completionToken) size - lowerThreshold)])						
								ifTrue: [possibleSuggestions add: each]]].
		"if there are still too many suggestions, we want to remove some of the longer ones"	

			[possibleSuggestions size > 330]
				whileTrue: [ upperThreshold := upperThreshold - 1.
					possibleSuggestions do: [:each |
					(each size > ((self completionToken) size + upperThreshold)) ifTrue: [possibleSuggestions remove: each]]]].
						
	^ possibleSuggestions
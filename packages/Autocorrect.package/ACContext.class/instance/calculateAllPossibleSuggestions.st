as yet unclassified
calculateAllPossibleSuggestions
	|possibleSuggestions excludedClasses allSelectorsOfReceiver upperThreshold lowerThreshold|
	
	possibleSuggestions := OrderedCollection new.
	(({#cascade . #object . #class} asOrderedCollection includes: self receiverType) 
		and: [self receiverClass notNil])
		ifTrue: [	
			excludedClasses := Object withAllSuperclasses.
			allSelectorsOfReceiver := self receiverClass allSelectorsForCompletionWithout: excludedClasses.
			
		"we want to not have to check against every possible selector for objects like Morph, so we trim the suggestions down a bit"
			(allSelectorsOfReceiver size <= 300) 
				ifTrue: [possibleSuggestions addAll: allSelectorsOfReceiver]
				ifFalse: [
					lowerThreshold := 2.
					(allSelectorsOfReceiver size <= 600) 
						ifTrue: [upperThreshold := 13]
						ifFalse: [upperThreshold := 9].
					allSelectorsOfReceiver do: [:each |
						((each size <= ((self completionToken) size + upperThreshold)) 
							and: [each size >= ((self completionToken) size - lowerThreshold)])						
								ifTrue: [possibleSuggestions add: each]]].
						
		"if there are still too many suggestions, we want to remove some of the longer ones"	
			[possibleSuggestions size > 660]
				whileTrue: [ upperThreshold := upperThreshold - 1.
					possibleSuggestions do: [:each |
					(each size > ((self completionToken) size + upperThreshold)) ifTrue: [possibleSuggestions remove: each]]]].
						
	^ possibleSuggestions
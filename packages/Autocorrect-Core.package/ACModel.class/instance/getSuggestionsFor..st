as yet unclassified
getSuggestionsFor: aString

	| suggestions|
	
	suggestions := SortedCollection new 
		sortBlock: [:a :b | a value <= b value].
	
	self strategies 
		do: [:strategy | (strategy getSuggestionsFor: aString) 
			do:	[:suggestion | 
				((strategy isKindOf: ACStrategyCompletionClasses) | 
					(strategy isKindOf: ACStrategyCompletionDefault)) ifTrue:
					[suggestion value: (suggestion value * 2)].
				suggestions add: suggestion]].
		
	suggestions asOrderedCollection.
	^suggestions 
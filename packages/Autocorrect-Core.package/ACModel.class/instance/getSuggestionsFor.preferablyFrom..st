as yet unclassified
getSuggestionsFor: aString preferablyFrom: aCollection

	| suggestions|
	
	suggestions := SortedCollection new 
		sortBlock: [:a :b | a <= b ].
	
	self strategies 
		do: [:strategy | (strategy getSuggestionsFor: aString preferablyFrom: aCollection) 
			do:	[:suggestion | 
				((strategy isKindOf: ACStrategyCompletionClasses) | 
					(strategy isKindOf: ACStrategyCompletionDefault)) ifTrue:
					[suggestion faults: (suggestion faults * 2)].
				suggestions add: suggestion]].
		
	suggestions asOrderedCollection.
	^suggestions 
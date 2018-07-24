calculation
getSuggestionsFor: aString
	| suggestions|
	
	suggestions := SortedCollection new 
		sortBlock: [:a :b | a <= b ].
	self strategies 
		do: [:strategy | (strategy getSuggestionsFor: aString) 
			do:	[:suggestion |
				suggestions add: suggestion]].
	suggestions asOrderedCollection.
	
	^ suggestions 
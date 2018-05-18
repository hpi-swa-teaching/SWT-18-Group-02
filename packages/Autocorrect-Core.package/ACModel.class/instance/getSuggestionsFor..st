as yet unclassified
getSuggestionsFor: aString

	| suggestions|
	
	suggestions := SortedCollection new 
		sortBlock: [:a :b | a value <= b value].
	
	self strategies 
		do: [:strategy | (strategy getSuggestionsFor: aString) 
			do:	[:suggestion | suggestions add: suggestion]].
		
	suggestions asOrderedCollection.
	^suggestions 
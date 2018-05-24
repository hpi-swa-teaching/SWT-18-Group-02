as yet unclassified
canUseOldSuggestionsFor: aString
	aString size <= self maxMistakes ifTrue: [^ false].
	(aString size >= self lastString size 
		and: [(aString first: self lastString size) = self lastString])
			ifTrue:[^ true].
	^ false
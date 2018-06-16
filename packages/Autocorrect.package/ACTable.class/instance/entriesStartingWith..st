lookUp access
entriesStartingWith: aString
	aString size < 2 ifTrue:[^self error: 'should be at least 2 long'].
	^(self tableFor: aString) values 
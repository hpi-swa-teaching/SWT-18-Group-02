lookUp access
tableFor: aString
	aString size < 2
		ifTrue:[^self tableAt: '']
		ifFalse:[^self tableAt: (aString first: 2)]
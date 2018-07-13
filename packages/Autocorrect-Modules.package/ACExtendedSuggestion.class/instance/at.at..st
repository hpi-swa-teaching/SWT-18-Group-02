accessing
at: row at: column
	row = 0 ifTrue: [^column].
	column = 0 ifTrue: [^row].
	row > (self suggestion size + self maxMistakes asInteger) ifTrue: [^self maxMistakes].
	^(self table at: row at: column) ifNil: [self table at: row at: column
		put: (self editDistanceAt: row at: column)]
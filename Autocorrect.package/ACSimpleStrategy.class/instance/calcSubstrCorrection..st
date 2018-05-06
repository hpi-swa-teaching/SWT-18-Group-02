private
calcSubstrCorrection: aString
	|lastEx shortEx|
	aString first isUppercase ifTrue: [lastEx := OCompletionTable classes entriesMatching: 
		(aString first: ((aString size) - 1))]
	ifFalse: [lastEx := OCompletionTable default entriesMatching: 
		(aString first: ((aString size) - 1))].
	lastEx do: [ :match |
		shortEx := match contents asString first: (aString size).
		((aString alike: shortEx) >= aString size) ifTrue: [self expected add: match]] 
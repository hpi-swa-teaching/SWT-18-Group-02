lookUp access
tableAt: aString
	^self lookupTable at: aString ifAbsentPut: [Dictionary new]
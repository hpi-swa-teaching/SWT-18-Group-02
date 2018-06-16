as yet unclassified
tableAt: aString
	^self lookupTable at: aString ifAbsentPut: [Dictionary new]